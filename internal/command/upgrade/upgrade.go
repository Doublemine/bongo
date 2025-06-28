package upgrade

import (
	"fmt"
	"log"
	"os"
	"os/exec"

	"github.com/doublemine/bongo/config"
	"github.com/spf13/cobra"
)

var CmdUpgrade = &cobra.Command{
	Use:     "upgrade",
	Short:   "Upgrade the bongo command.",
	Long:    "Upgrade the bongo command.",
	Example: "bongo upgrade",
	Run: func(_ *cobra.Command, _ []string) {
		fmt.Printf("go install %s\n", config.BongoCmd)
		cmd := exec.Command("go", "install", config.BongoCmd)
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		if err := cmd.Run(); err != nil {
			log.Fatalf("go install %s error\n", err)
		}
		fmt.Printf("\n🎉 Bongo upgrade successfully!\n\n")
	},
}
