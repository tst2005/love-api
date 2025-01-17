return {
    name = 'World',
    description = 'A world is an object that contains all bodies and joints.',
    constructors = {
        'newWorld'
    },
    functions = {
        {
            name = 'destroy',
            description = 'Destroys the world, taking all bodies, joints, fixtures and their shapes with it.\n\nAn error will occur if you attempt to use any of the destroyed objects after calling this function.',
            variants = {
                {}
            }
        },
        {
            name = 'isDestroyed',
            description = 'Gets whether the World is destroyed. Destroyed worlds cannot be used.',
            variants = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'destroyed',
                            description = 'Whether the World is destroyed.'
                        }
                    }
                }
            }
        },
        {
            name = 'isSleepingAllowed',
            description = 'Returns the sleep behaviour of the world.',
            variants = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'allowSleep',
                            description = 'True if the bodies are allowed to sleep or false if not.'
                        }
                    }
                }
            }
        },
        {
            name = 'getBodyCount',
            description = 'Get the number of bodies in the world.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'n',
                            description = 'The number of bodies in the world.'
                        }
                    }
                }
            }
        },
        {
            name = 'getBodyList',
            description = 'Returns a table with all bodies.',
            variants = {
                {
                    returns = {
                        {
                            type = 'table',
                            name = 'bodies',
                            description = 'A sequence with all bodies.'
                        }
                    }
                }
            }
        },
        {
            name = 'getCallbacks',
            description = 'Returns functions for the callbacks during the world update.',
            variants = {
                {
                    returns = {
                        {
                            type = 'function',
                            name = 'beginContact',
                            description = 'Gets called when two fixtures begin to overlap.'
                        },
                        {
                            type = 'function',
                            name = 'endContact',
                            description = 'Gets called when two fixtures cease to overlap.'
                        },
                        {
                            type = 'function',
                            name = 'preSolve',
                            description = 'Gets called before a collision gets resolved.'
                        },
                        {
                            type = 'function',
                            name = 'postSolve',
                            description = 'Gets called after the collision has been resolved.'
                        }
                    }
                }
            }
        },
        {
            name = 'getContactCount',
            description = 'Returns the number of contacts in the world.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'n',
                            description = 'The number of contacts in the world.'
                        }
                    }
                }
            }
        },
        {
            name = 'getContactFilter',
            description = 'Returns the function for collision filtering.',
            variants = {
                {
                    returns = {
                        {
                            type = 'function',
                            name = 'contactFilter',
                            description = 'The function that handles the contact filtering.'
                        }
                    }
                }
            }
        },
        {
            name = 'getContactList',
            description = 'Returns a table with all contacts.',
            variants = {
                {
                    returns = {
                        {
                            type = 'table',
                            name = 'contacts',
                            description = 'A sequence with all contacts.'
                        }
                    }
                }
            }
        },
        {
            name = 'getGravity',
            description = 'Get the gravity of the world.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x component of gravity.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y component of gravity.'
                        }
                    }
                }
            }
        },
        {
            name = 'getJointCount',
            description = 'Get the number of joints in the world.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'n',
                            description = 'The number of joints in the world.'
                        }
                    }
                }
            }
        },
        {
            name = 'getJointList',
            description = 'Returns a table with all joints.',
            variants = {
                {
                    returns = {
                        {
                            type = 'table',
                            name = 'joints',
                            description = 'A sequence with all joints.'
                        }
                    }
                }
            }
        },
        {
            name = 'isLocked',
            description = 'Returns if the world is updating its state.\n\nThis will return true inside the callbacks from World:setCallbacks.',
            variants = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'locked',
                            description = 'Will be true if the world is in the process of updating its state.'
                        }
                    }
                }
            }
        },
        {
            name = 'queryBoundingBox',
            description = 'Calls a function for each fixture inside the specified area.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'topLeftX',
                            description = 'The x position of the top-left point.'
                        },
                        {
                            type = 'number',
                            name = 'topLeftY',
                            description = 'The y position of the top-left point.'
                        },
                        {
                            type = 'number',
                            name = 'bottomRightX',
                            description = 'The x position of the bottom-right point.'
                        },
                        {
                            type = 'number',
                            name = 'bottomRightY',
                            description = 'The y position of the bottom-right point.'
                        },
                        {
                            type = 'function',
                            name = 'callback',
                            description = 'This function gets passed one argument, the fixture, and should return a boolean. The search will continue if it is true or stop if it is false.'
                        }
                    }
                }
            }
        },
        {
            name = 'rayCast',
            description = 'Casts a ray and calls a function with the fixtures that intersect it. You cannot make any assumptions about the order of the callbacks.\n\nEach time the function gets called, 6 arguments get passed to it. The first is the fixture intersecting the ray. The second and third are the coordinates of the intersection point. The fourth and fifth is the surface normal vector of the shape edge. The sixth argument is the position of the intersection on the ray as a number from 0 to 1 (or even higher if the ray length was changed with the return value).\n\nThe ray can be controlled with the return value. A positive value sets a new ray length where 1 is the default value. A value of 0 terminates the ray. If the callback function returns -1, the intersection gets ignored as if it didn\'t happen.\n\nThere is a bug in 0.8.0 where the normal vector passed to the callback function gets scaled by love.physics.getMeter.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x position of the starting point of the ray.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y position of the starting point of the ray.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x position of the end point of the ray.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y position of the end point of the ray.'
                        },
                        {
                            type = 'function',
                            name = 'callback',
                            description = 'This function gets six arguments and should return a number.'
                        }
                    }
                }
            }
        },
        {
            name = 'setSleepingAllowed',
            description = 'Set the sleep behaviour of the world.\n\nA sleeping body is much more efficient to simulate than when awake.\n\nIf sleeping is allowed, any body that has come to rest will sleep.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'allowSleep',
                            description = 'True if the bodies are allowed to sleep or false if not.'
                        }
                    }
                }
            }
        },
        {
            name = 'setCallbacks',
            description = 'Sets functions for the collision callbacks during the world update.\n\nFour Lua functions can be given as arguments. The value nil removes a function.\n\nWhen called, each function will be passed three arguments. The first two arguments are the colliding fixtures and the third argument is the Contact between them. The PostSolve callback additionally gets the normal and tangent impulse for each contact point.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'function',
                            name = 'beginContact',
                            description = 'Gets called when two fixtures begin to overlap. '
                        },
                        {
                            type = 'function',
                            name = 'endContact',
                            description = 'Gets called when two fixtures cease to overlap.'
                        },
                        {
                            type = 'function',
                            name = 'preSolve',
                            description = 'Gets called before a collision gets resolved.'
                        },
                        {
                            type = 'function',
                            name = 'postSolve',
                            description = 'Gets called after the collision has been resolved.'
                        }
                    }
                }
            }
        },
        {
            name = 'setGravity',
            description = 'Set the gravity of the world.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x component of gravity.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y component of gravity.'
                        }
                    }
                }
            }
        },
        {
            name = 'update',
            description = 'Update the state of the world.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'dt',
                            description = 'The time (in seconds) to advance the physics simulation.'
                        }
                    }
                }
            }
        }
    },
    supertypes = {
        'Object'
    }
}
