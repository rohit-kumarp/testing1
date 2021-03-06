branch=$1
echo "*** Pull Request branch is : \"$branch\" ***"
echo "*** creating temp branch with Pull Request & Merge with Latest Master"
pwd

echo `git remote -v`

branch1=`git branch | grep \* | cut -d ' ' -f2`
echo "*** Current Working branch is : \"$branch1\" ***"

if [ -z "$branch" ]; then
  echo "*** error: Failed to get PR branch *** "
  exit 1
fi

if ! git checkout $branch; then
if ! git checkout -b $branch; then
  echo "*** error: Failed to create temp branch ***"
  exit 1
fi
fi

git fetch 

if ! git fetch origin master && git merge master --no-ff  --no-edit; then
  echo "*** error: Failed to merge with latest branch ***"
  exit 1
fi


echo "*** pushing ${branch} to git repo with master ***"

if ! git push --set-upstream origin ${Branch} -f; then
  echo "*** error: Failed to push temp branch \"${branch}\" in git repo ***"
  exit 1
fi

echo "*** Successfully Pushed PR temp branch \"${branch}\""
