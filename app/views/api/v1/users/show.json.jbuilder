json.user do
  json.extract! @user, :id, :username, :email
end
json.preferencia do
  json.extract! @user.preferencia, :notificar_cliente, :logo_file_name, :titulo
end
