## Switching Environment Demonstration Project
This is a demo project that shows the end-state of a project using the environment-switching technique described in [http://www.blackdogfoundry.com/blog/migrating-ios-app-through-multiple-environments](http://www.blackdogfoundry.com/blog/migrating-ios-app-through-multiple-environments).

The general gist of the process is:

* Create a `environment_XXX.plist` file per environment that contains all of the settings that vary by environment.
* The app, however, is just going to look for a file called `environment.plist` so the build process will copy over the appropriate plist.
* Use Xcode's Info.plist preprocessing capability to dynamically populate the `Info.plist` based on the settings in the appropriate `environment_XXX.plist` file.
* Use Xcode's *Configuration* and *Scheme* settings to switch between environments.
* The build process will create bundles that have:
	* Unique bundle identifiers. Non-prod will be suffixed with the environment name. For example, `.DEV` and `.SYS`
	* A different icon for each environment
	* An app name contains the environment and the build day of the month. For example, `DEV 10` means it is a development build and was built on the 10th of the month


## License
BDSwitchEnvDemo is licensed under the MIT License.

	Copyright (c) 2014 Craig Edwards
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
