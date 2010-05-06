SHARED_PATH = "/home/railsapps/vidaloucavida.com.br/shared"
DB_BACKUP_DIR = File.join(SHARED_PATH, "db")
BACKUP_SERVER = "mergulhao@mergulhao.homelinux.net:~/backup/vidaloucavida.com.br/"

namespace :backup do
  task :run => :database do 
    `rsync -a --delete-excluded #{SHARED_PATH} #{BACKUP_SERVER}`
  end
  
  task :database => :environment do
    FileUtils.mkdir_p(DB_BACKUP_DIR)
    db_backup_file = File.join(DB_BACKUP_DIR, "backup-#{Time.now.strftime("%Y%m%d%H%M%S")}.sql.gz")
    `mysqldump --single-transaction --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --quick -u root #{ActiveRecord::Base.configurations[RAILS_ENV]["database"]} | gzip > #{db_backup_file}`
    FileUtils.rm(Dir.glob("#{DB_BACKUP_DIR}/*.sql.gz").sort.reverse[5..-1]||[])
  end
end