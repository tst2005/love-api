return {
    name = 'physics',
    description = 'Can simulate 2D rigid body physics in a realistic manner. This module is based on Box2D, and this API corresponds to the Box2D API as closely as possible.',
    types = {
        require('modules.physics.types.Body'),
        require('modules.physics.types.ChainShape'),
        require('modules.physics.types.CircleShape'),
        require('modules.physics.types.Contact'),
        require('modules.physics.types.EdgeShape'),
        require('modules.physics.types.DistanceJoint'),
        require('modules.physics.types.Fixture'),
        require('modules.physics.types.FrictionJoint'),
        require('modules.physics.types.GearJoint'),
        require('modules.physics.types.Joint'),
        require('modules.physics.types.MouseJoint'),
        require('modules.physics.types.PolygonShape'),
        require('modules.physics.types.PrismaticJoint'),
        require('modules.physics.types.PulleyJoint'),
        require('modules.physics.types.RevoluteJoint'),
        require('modules.physics.types.RopeJoint'),
        require('modules.physics.types.Shape'),
        require('modules.physics.types.WeldJoint'),
        require('modules.physics.types.WheelJoint'),
        require('modules.physics.types.World')
    },
    functions = {
        {
            name = 'getDistance',
            description = 'Returns the two closest points between two fixtures and their distance.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Fixture',
                            name = 'fixture1',
                            description = 'The first fixture.'
                        },
                        {
                            type = 'Fixture',
                            name = 'fixture2',
                            description = 'The second fixture.'
                        }
                    },
                    returns = {
                        {
                            type = 'number',
                            name = 'distance',
                            description = 'The distance of the two points.'
                        },
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x-coordinate of the first point.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y-coordinate of the first point.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x-coordinate of the second point.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y-coordinate of the second point.'
                        }
                    }
                }
            }
        },
        {
            name = 'getMeter',
            description = 'Get the scale of the world.\n\nThe world scale is the number of pixels per meter. Try to keep your shape sizes less than 10 times this scale.\n\nThis is important because the physics in Box2D is tuned to work well for objects of size 0.1m up to 10m. All physics coordinates are divided by this number for the physics calculations.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'scale',
                            description = 'The size of 1 meter in pixels.'
                        }
                    }
                }
            }
        },
        {
            name = 'newBody',
            description = 'Creates a new body.\n\nThere are three types of bodies. Static bodies do not move, have a infinite mass, and can be used for level boundaries. Dynamic bodies are the main actors in the simulation, they collide with everything. Kinematic bodies do not react to forces and only collide with dynamic bodies.\n\nThe mass of the body gets calculated when a Fixture is attached or removed, but can be changed at any time with Body:setMass or Body:resetMassData.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'World',
                            name = 'world',
                            description = 'The world to create the body in.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            default = '0',
                            description = 'The x position of the body.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            default = '0',
                            description = 'The y position of the body.'
                        },
                        {
                            type = 'BodyType',
                            name = 'type',
                            default = '"static"',
                            description = 'The type of the body.'
                        }
                    },
                    returns = {
                        {
                            type = 'Body',
                            name = 'body',
                            description = 'A new body.'
                        }
                    }
                }
            }
        },
        {
            name = 'newChainShape',
            description = 'Creates a new ChainShape.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'loop',
                            description = 'If the chain should loop back to the first point.'
                        },
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x position of the first point.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y position of the first point.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x position of the second point.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y position of the second point.'
                        },
                        {
                            type = 'number',
                            name = '...',
                            description = 'Additional point positions.'
                        }
                    },
                    returns = {
                        {
                            type = 'ChainShape',
                            name = 'shape',
                            description = 'The new shape.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'loop',
                            description = 'If the chain should loop back to the first point.'
                        },
                        {
                            type = 'table',
                            name = 'points',
                            description = 'A list of points to construct the ChainShape, in the form of {x1, y1, x2, y2, ...}.'
                        }
                    },
                    returns = {
                        {
                            type = 'ChainShape',
                            name = 'shape',
                            description = 'The new shape.'
                        }
                    }
                }
            }
        },
        {
            name = 'newCircleShape',
            description = 'Creates a new CircleShape.',
            variants = {
              {
                  arguments = {
                      {
                          type = 'number',
                          name = 'radius',
                          description = 'The radius of the circle.'
                      }
                  },
                  returns = {
                      {
                          type = 'CircleShape',
                          name = 'shape',
                          description = 'The new shape.'
                      }
                  }
              },
              {
                  arguments = {
                      {
                          type = 'number',
                          name = 'x',
                          description = 'The x offset of the circle.'
                      },
                      {
                          type = 'number',
                          name = 'y',
                          description = 'The y offset of the circle.'
                      },
                      {
                          type = 'number',
                          name = 'radius',
                          description = 'The radius of the circle.'
                      }
                  },
                  returns = {
                      {
                          type = 'CircleShape',
                          name = 'shape',
                          description = 'The new shape.'
                      }
                  }
              }
            }
        },
        {
            name = 'newDistanceJoint',
            description = 'Create a distance joint between two bodies.\n\nThis joint constrains the distance between two points on two bodies to be constant. These two points are specified in world coordinates and the two bodies are assumed to be in place when this joint is created. The first anchor point is connected to the first body and the second to the second body, and the points define the length of the distance joint.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to attach to the joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to attach to the joint.'
                        },
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x position of the first anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y position of the first anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x position of the second anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y position of the second anchor point.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'DistanceJoint',
                            name = 'joint',
                            description = 'The new distance joint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newEdgeShape',
            description = 'Creates a edge shape.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x position of the first point.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y position of the first point.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x position of the second point.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y position of the second point.'
                        }
                    },
                    returns = {
                        {
                            type = 'EdgeShape',
                            name = 'shape',
                            description = 'The new shape.'
                        }
                    }
                }
            }
        },
        {
            name = 'newFixture',
            description = 'Creates and attaches a Fixture to a body.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body',
                            description = 'The body which gets the fixture attached.'
                        },
                        {
                            type = 'Shape',
                            name = 'shape',
                            description = 'The shape of the fixture.'
                        },
                        {
                            type = 'number',
                            name = 'density',
                            default = '1',
                            description = 'The density of the fixture.'
                        }
                    },
                    returns = {
                        {
                            type = 'Fixture',
                            name = 'fixture',
                            description = 'The new fixture.'
                        }
                    }
                }
            }
        },
        {
            name = 'newFrictionJoint',
            description = 'Create a friction joint between two bodies. A FrictionJoint applies friction to a body.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to attach to the joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to attach to the joint.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x position of the anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y position of the anchor point.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with eachother.'
                        }
                    },
                    returns = {
                        {
                            type = 'FrictionJoint',
                            name = 'joint',
                            description = 'The new FrictionJoint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newGearJoint',
            description = 'Create a gear joint connecting two joints.\n\nThe gear joint connects two joints that must be either prismatic or revolute joints. Using this joint requires that the joints it uses connect their respective bodies to the ground and have the ground as the first body. When destroying the bodies and joints you must make sure you destroy the gear joint before the other joints.\n\nThe gear joint has a ratio the determines how the angular or distance values of the connected joints relate to each other. The formula coordinate1 + ratio * coordinate2 always has a constant value that is set when the gear joint is created.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Joint',
                            name = 'joint1',
                            description = 'The first joint to connect with a gear joint.'
                        },
                        {
                            type = 'Joint',
                            name = 'joint2',
                            description = 'The second joint to connect with a gear joint.'
                        },
                        {
                            type = 'number',
                            name = 'ratio',
                            default = '1',
                            description = 'The gear ratio.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'Joint',
                            name = 'joint',
                            description = 'The new gear joint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newMouseJoint',
            description = 'Create a joint between a body and the mouse.\n\nThis joint actually connects the body to a fixed point in the world. To make it follow the mouse, the fixed point must be updated every timestep (example below).\n\nThe advantage of using a MouseJoint instead of just changing a body position directly is that collisions and reactions to other joints are handled by the physics engine.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body',
                            description = 'The body to attach to the mouse.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x position of the connecting point.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y position of the connecting point.'
                        }
                    },
                    returns = {
                        {
                            type = 'Joint',
                            name = 'joint',
                            description = 'The new mouse joint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newPolygonShape',
            description = 'Creates a new PolygonShape.\n\nThis shape can have 8 vertices at most, and must form a convex shape.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The position of first point on the x-axis.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The position of first point on the y-axis.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The position of second point on the x-axis.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The position of second point on the y-axis.'
                        },
                        {
                            type = 'number',
                            name = '...',
                            description = 'You can continue passing more point positions to create the PolygonShape.'
                        }
                    },
                    returns = {
                        {
                            type = 'PolygonShape',
                            name = 'shape',
                            description = 'A new PolygonShape.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'table',
                            name = 'vertices',
                            description = 'A list of vertices to construct the polygon, in the form of {x1, y1, x2, y2, x3, y3, ...}.'
                        }
                    },
                    returns = {
                        {
                            type = 'PolygonShape',
                            name = 'shape',
                            description = 'A new PolygonShape.'
                        }
                    }
                }
            }
        },
        {
            name = 'newPrismaticJoint',
            description = 'Create a prismatic joints between two bodies.\n\nA prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a revolute joint, but with translation and force substituted for angle and torque.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to connect with a prismatic joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to connect with a prismatic joint.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x coordinate of the anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y coordinate of the anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'ax',
                            description = 'The x coordinate of the axis vector.'
                        },
                        {
                            type = 'number',
                            name = 'ay',
                            description = 'The y coordinate of the axis vector.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'PrismaticJoint',
                            name = 'joint',
                            description = 'The new prismatic joint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newPulleyJoint',
            description = 'Create a pulley joint to join two bodies to each other and the ground.\n\nThe pulley joint simulates a pulley with an optional block and tackle. If the ratio parameter has a value different from one, then the simulated rope extends faster on one side than the other. In a pulley joint the total length of the simulated rope is the constant length1 + ratio * length2, which is set when the pulley joint is created.\n\nPulley joints can behave unpredictably if one side is fully extended. It is recommended that the method setMaxLengths  be used to constrain the maximum lengths each side can attain.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to connect with a pulley joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to connect with a pulley joint.'
                        },
                        {
                            type = 'number',
                            name = 'gx1',
                            description = 'The x coordinate of the first body\'s ground anchor.'
                        },
                        {
                            type = 'number',
                            name = 'gy1',
                            description = 'The y coordinate of the first body\'s ground anchor.'
                        },
                        {
                            type = 'number',
                            name = 'gx2',
                            description = 'The x coordinate of the second body\'s ground anchor.'
                        },
                        {
                            type = 'number',
                            name = 'gy2',
                            description = 'The y coordinate of the second body\'s ground anchor.'
                        },
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x coordinate of the pulley joint anchor in the first body.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y coordinate of the pulley joint anchor in the first body.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x coordinate of the pulley joint anchor in the second body.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y coordinate of the pulley joint anchor in the second body.'
                        },
                        {
                            type = 'number',
                            name = 'ratio',
                            default = '1',
                            description = 'The joint ratio.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'true',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'Joint',
                            name = 'joint',
                            description = 'The new pulley joint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newRectangleShape',
            description = 'Shorthand for creating rectangluar PolygonShapes.\n\nBy default, the local origin is located at the center of the rectangle as opposed to the top left for graphics.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'width',
                            description = 'The width of the rectangle.'
                        },
                        {
                            type = 'number',
                            name = 'height',
                            description = 'The height of the rectangle.'
                        }
                    },
                    returns = {
                        {
                            type = 'PolygonShape',
                            name = 'shape',
                            description = 'A new PolygonShape.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The offset along the x-axis.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The offset along the y-axis.'
                        },
                        {
                            type = 'number',
                            name = 'width',
                            description = 'The width of the rectangle.'
                        },
                        {
                            type = 'number',
                            name = 'height',
                            description = 'The height of the rectangle.'
                        },
                        {
                            type = 'number',
                            name = 'angle',
                            default = '0',
                            description = 'The initial angle of the rectangle.'
                        }
                    },
                    returns = {
                        {
                            type = 'PolygonShape',
                            name = 'shape',
                            description = 'A new PolygonShape.'
                        }
                    }
                }
            }
        },
        {
            name = 'newRevoluteJoint',
            description = 'Creates a pivot joint between two bodies.\n\nThis joint connects two bodies to a point around which they can pivot.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to connect with a Revolute Joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to connect with a Revolute Joint.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x position of the connecting point.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y position of the connecting point.'
                        },
                        {
                            type = 'number',
                            name = 'collideConnected',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'Joint',
                            name = 'joint',
                            description = 'The new revolute joint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newRopeJoint',
            description = 'Create a joint between two bodies. Its only function is enforcing a max distance between these bodies.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to attach to the joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to attach to the joint.'
                        },
                        {
                            type = 'number',
                            name = 'x1',
                            description = 'The x position of the first anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y1',
                            description = 'The y position of the first anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'x2',
                            description = 'The x position of the second anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y2',
                            description = 'The y position of the second anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'maxLength',
                            description = 'The maximum distance for the bodies.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'RopeJoint',
                            name = 'joint',
                            description = 'The new RopeJoint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newWeldJoint',
            description = 'Create a friction joint between two bodies. A WeldJoint essentially glues two bodies together.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body to attach to the joint.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body to attach to the joint.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x position of the anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y position of the anchor point.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'WeldJoint',
                            name = 'joint',
                            description = 'The new WeldJoint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newWheelJoint',
            description = 'Creates a wheel joint.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'Body',
                            name = 'body1',
                            description = 'The first body.'
                        },
                        {
                            type = 'Body',
                            name = 'body2',
                            description = 'The second body.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x position of the anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y position of the anchor point.'
                        },
                        {
                            type = 'number',
                            name = 'ax',
                            description = 'The x position of the axis unit vector.'
                        },
                        {
                            type = 'number',
                            name = 'ay',
                            description = 'The y position of the axis unit vector.'
                        },
                        {
                            type = 'boolean',
                            name = 'collideConnected',
                            default = 'false',
                            description = 'Specifies whether the two bodies should collide with each other.'
                        }
                    },
                    returns = {
                        {
                            type = 'WheelJoint',
                            name = 'joint',
                            description = 'The new WheelJoint.'
                        }
                    }
                }
            }
        },
        {
            name = 'newWorld',
            description = 'Creates a new World.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'xg',
                            default = '0',
                            description = 'The x component of gravity.'
                        },
                        {
                            type = 'number',
                            name = 'yg',
                            default = '0',
                            description = 'The y component of gravity.'
                        },
                        {
                            type = 'boolean',
                            name = 'sleep',
                            default = 'true',
                            description = 'Whether the bodies in this world are allowed to sleep.'
                        }
                    },
                    returns = {
                        {
                            type = 'World',
                            name = 'world',
                            description = 'A brave new World.'
                        }
                    }
                }
            }
        },
        {
            name = 'setMeter',
            description = 'Sets the pixels to meter scale factor.\n\nAll coordinates in the physics module are divided by this number and converted to meters, and it creates a convenient way to draw the objects directly to the screen without the need for graphics transformations.\n\nIt is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters. The default meter scale is 30.\n\nlove.physics.setMeter does not apply retroactively to created objects. Created objects retain their meter coordinates but the scale factor will affect their pixel coordinates.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'scale',
                            description = 'The scale factor as an integer.'
                        }
                    }
                }
            }
        }
    },
    enums = {
        require('modules.physics.enums.BodyType'),
        require('modules.physics.enums.JointType'),
        require('modules.physics.enums.ShapeType')
    }
}
