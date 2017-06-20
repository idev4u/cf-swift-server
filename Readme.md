# Example how to push an minimal swift cloudfoundry app

## install
```shell
bash$ git clone git@github.com:idev4u/cf-swift-server.git
bash$ cd cf-swift-server
bash$ cf push <your-cool-swift-app>
```
### use

```shell
bash$ curl `cf apps | grep started | awk '{print($6)}'`
Hello, Swift Developers!
```

## development

```shell
bash$ swift package generate-xcodeproj
bash$ open mySwifti.xcodeproj  
```

run local
```shell
bash$ swift build
bash$ ./.build/debug/mySwifti
```

```
bash$ cf push your-cool-swift-app
```
