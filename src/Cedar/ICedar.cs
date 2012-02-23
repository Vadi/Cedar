﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cedar
{
    public interface ICedar:ICedarSession
    {
        /// <summary>
        /// set up the scehma first time, it returns the key to the app
        /// </summary>
        /// <param name="appName"></param>
        /// <returns></returns>
        long SetupSchema();

        ICedarSession GetSession(long uuid);


    }
}
