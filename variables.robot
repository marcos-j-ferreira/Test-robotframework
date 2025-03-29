*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${EMAIL-NEW}                  aa@proxima.com
${PASSWORD-NEW}               12345
${EMAIL-V}                    usuario@teste.com
${PASSWORD-v}                 Teste@1234
${PASSWORD-E}                 intelbras
${EMAIL-E}                    intelbras
${EMAIL-I}                    intelbras@intelbras.com
${BROWSER}                    Chrome
${URL}                        https://teste-estagiarios.vercel.app/
${BUTTON-PBA}                 Link:Password-based Authentication.
${TIME}                       1
${INPUT-LE}                   //input[@class='mt-1 p-2 w-full border rounded-md focus:outline-none focus:ring focus:border-blue-300 dark:bg-gray-700 dark:text-gray-100 dark:border-gray-600' and @type='email']
${INPUT-LP}                   //input[@class='mt-1 p-2 w-full border rounded-md focus:outline-none focus:ring focus:border-blue-300 dark:bg-gray-700 dark:text-gray-100 dark:border-gray-600' and @type='password']
${BUTTON-SUBMIT}              //button[@type='submit']
${INVALID-LOGIN}              //p[@class='text-center mt-4 text-red-500']
${LINK-CREATE}                Link:Create a new account
${MSG-LOGIN-SUCCESSFUL-01}    //p[@class='text-green-500 text-center text-lg font-semibold']
${MSG-LOGIN-SUCCESSFUL-02}    //p[@class='text-center mt-4 text-green-500']
${MSG-SIGNU}                  //p[@class='text-center mt-4 text-green-500']
${BACK-LOGIN}                 LINK:Back to login