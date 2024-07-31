# Instalar protobufjs e protobufjs-cli localmente
yarn add protobufjs protobufjs-cli

# Adicionar a localização dos binários localmente instalados ao PATH
export PATH="./node_modules/.bin:$PATH"

# Gerar os arquivos estáticos do protobuf
./node_modules/.bin/pbjs -t static-module -w commonjs -o ./WAProto/index.js ./WAProto/WAProto.proto
./node_modules/.bin/pbts -o ./WAProto/index.d.ts ./WAProto/index.js

#protoc --plugin=./node_modules/.bin/protoc-gen-ts_proto --ts_proto_opt=env=node,useOptionals=true,forceLong=long --ts_proto_out=. ./src/Binary/WAMessage.proto;
