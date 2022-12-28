install.packages("usethis")

### 3. Configure git with Rstudio ############################################

## Name, email
usethis::use_git_config(user.name = "Youngbin Han", user.email = "ybhan2016@gmail.com")

## setting: permanent storage
credentials::credential_helper_set("manager")                 # Windows
credentials::credential_helper_set("osxkeychain")             # Mac
credentials::credential_helper_set("store")                   # Rstudio Cloud

## create a personal access token for authentication:
usethis::create_github_token() 
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)

## copy and paste your token and press enter
credentials::set_github_pat()

# ----------------------------------------------------------------------------

#### 4. Restart R! ###########################################################

# ----------------------------------------------------------------------------

#### 5. Verify settings ######################################################

a<-c(1,2,3)


## Your username and email should be stated correctly in the output. 
## Also, the report shoud cotain something like:
## 'Personal access token: '<found in env var>''

# ----------------------------------------------------------------------------

## THAT'S IT!