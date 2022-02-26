![Build/Deploy Status](https://github.com/Jingshuai-cloud/myob-go-test/actions/workflows/CI.yaml/badge.svg)

## How to run locally

- git clone the repo
- go to the repo, open the terminal in the IDE(e.g.VSCode)
- run `make build` to build the docker image
- run `make run-local` to run the docker image

### Test result

- POST /token

  Return a token based on a shared secret. The shared secret is passed in the
  environment as the variable `SECRET`.
  
  <img width="991" alt="Screen Shot 2022-02-27 at 10 21 54 am" src="https://user-images.githubusercontent.com/56346739/155862190-9e9455cf-ec51-4f64-9b1f-182128facc48.png">


- GET /health

  Used to check the service is 'up'. It should return an HTTP code >= 200
  
<img width="999" alt="Screen Shot 2022-02-27 at 10 22 06 am" src="https://user-images.githubusercontent.com/56346739/155862193-5265b32d-2b9b-4804-991d-ba926c107854.png">

- GET /metrics

  Return some basic metrics about the running service.
  
  <img width="993" alt="Screen Shot 2022-02-27 at 10 22 16 am" src="https://user-images.githubusercontent.com/56346739/155862194-871a867e-e02e-4210-a67b-cd9b75e827d8.png">


All endpoints should:

- Respond with valid JSON.
- Return appropriate HTTP codes.
- Enable concurrent access.
<img width="739" alt="Screen Shot 2022-02-27 at 10 23 06 am" src="https://user-images.githubusercontent.com/56346739/155862228-1c7a6887-8b3f-4bb8-8643-cfa7679ba91b.png">


