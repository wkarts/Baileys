# Instalar protobufjs e protobufjs-cli globalmente
yarn global add protobufjs protobufjs-cli

# Adicionar a localização dos binários globalmente instalados ao PATH
export PATH="$(yarn global bin):$PATH"

# Gerar os arquivos estáticos do protobuf
pbjs -t static-module -w commonjs -o ./WAProto/index.js ./WAProto/WAProto.proto
pbts -o ./WAProto/index.d.ts ./WAProto/index.js

#protoc --plugin=./node_modules/.bin/protoc-gen-ts_proto --ts_proto_opt=env=node,useOptionals=true,forceLong=long --ts_proto_out=. ./src/Binary/WAMessage.proto;
