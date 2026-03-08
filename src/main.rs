use clap::Parser;
use anyhow::Result;

#[derive(Parser)]
#[command(name = "zeroclaw-builder")]
#[command(about = "ZeroClaw build tool for OpenWrt")]
#[command(version = "0.1.0")]
struct Cli {
    /// Target architecture
    #[arg(short, long, default_value = "x86_64")]
    target: String,
}

fn main() -> Result<()> {
    let cli = Cli::parse();
    
    println!("ZeroClaw Builder");
    println!("Target: {}", cli.target);
    println!("Build placeholder - actual implementation coming soon");
    
    Ok(())
}
