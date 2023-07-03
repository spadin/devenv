FROM manjarolinux/base:latest

# Install packages
RUN pacman -Syu --noconfirm --needed base-devel git neovim tmux curl

# Set Timezone for container
# https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
ENV TZ=America/Los_Angeles 

# Install oh-my-bash for a prettier command line
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Copy my dotfiles
COPY config/git/.gitconfig /root/.gitconfig
COPY config/bash/custom.sh /root/.oh-my-bash/custom/custom.sh

# Start cli as bash after docker run or docker-compose up
CMD ["bash"]


