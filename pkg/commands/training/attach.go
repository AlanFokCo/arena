// Copyright 2018 The Kubeflow Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package training

import (
	"fmt"

	"github.com/kubeflow/arena/pkg/apis/arenaclient"
	podattach "github.com/kubeflow/arena/pkg/apis/attach"
	"github.com/kubeflow/arena/pkg/apis/types"
	"github.com/kubeflow/arena/pkg/apis/utils"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

func NewAttachCommand() *cobra.Command {
	var jobType string
	builder := podattach.NewAttachArgsBuilder()
	var command = &cobra.Command{
		Use:   "attach JOB [-i INSTANCE] [-c CONTAINER]",
		Short: "Attach a training job and execute some commands",
		PreRun: func(cmd *cobra.Command, args []string) {
			_ = viper.BindPFlags(cmd.Flags())
		},
		RunE: func(cmd *cobra.Command, args []string) error {
			if len(args) == 0 {
				cmd.HelpFunc()(cmd, args)
				return fmt.Errorf("not set job name,please set it")
			}
			name := args[0]
			client, err := arenaclient.NewArenaClient(types.ArenaClientArgs{
				Kubeconfig:     viper.GetString("config"),
				LogLevel:       viper.GetString("loglevel"),
				Namespace:      viper.GetString("namespace"),
				ArenaNamespace: viper.GetString("arena-namespace"),
				IsDaemonMode:   false,
			})
			if err != nil {
				return fmt.Errorf("failed to create arena client: %v", err)
			}
			command := []string{}
			if len(args) > 1 {
				command = args[1:]
			}
			attachArgs, err := builder.CmdArgsLenAtDash(cmd.ArgsLenAtDash()).Command(command).Build()
			if err != nil {
				return err
			}
			return client.Training().Attach(name, utils.TransferTrainingJobType(jobType), attachArgs)
		},
	}
	command.Flags().StringVarP(&jobType, "type", "T", "", fmt.Sprintf("The training type to get, the possible option is %v. (optional)", utils.GetSupportTrainingJobTypesInfo()))
	builder.AddCommandFlags(command)
	return command
}
