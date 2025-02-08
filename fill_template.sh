#!/usr/bin/env sh

set -e

echo "To fill the template tell me your egui project crate name: "

read crate

echo "To fill the template tell me your name (for author in Cargo.toml): "

read name

echo "To fill the template tell me your e-mail address (also for Cargo.toml): "

read email

echo "Patching files..."

sed -i '' -e "s/eframe_template/$crate/g" Cargo.toml
sed -i '' -e "s/eframe_template/$crate/g" src/main.rs
sed -i '' -e "s/eframe template/$crate/g" index.html
sed -i '' -e "s/eframe_template/$crate/g" assets/sw.js
sed -i '' -e "s/Emil Ernerfeldt/$name/g" Cargo.toml
sed -i '' -e "s/emil.ernerfeldt@gmail.com/$email/g" Cargo.toml

echo "Done."

