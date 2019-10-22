# espo_contacts

# Utils
regenerate models json serializers
 
```bash
$ flutter pub run build_runner build
```


###connect to existed app for test
```
run test app  espo_contacts/test_driver/auth/app.dart from ide with args 
--observatory-port 8888 --disable-service-auth-codes


run test from console 
flutter drive --target=test_driver/auth/app.dart --use-existing-app=http://127.0.0.1:8888/ 

``` 

```ci mode run 

flutter drive test_driver/auth/app.dart

or 
flutter drive test_driver/*/*


```

### for debug in idea see contribute folder


### run test in ui mode
```bash
flutter run test/pages/crm_page/leads_component/view_test.dart
``` 

 

 ### run all  test (without integration test)
 ```bash
 flutter test
 ``` 