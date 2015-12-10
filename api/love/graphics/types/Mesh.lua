return {
    name = 'Mesh',
    description = 'A 2D polygon mesh used for drawing arbitrary textured shapes.',
    constructors = {
        'newMesh'
    },
    functions = {
        {
            name = 'getDrawMode',
            description = 'Gets the mode used when drawing the Mesh.',
            variants = {
                {
                    returns = {
                        {
                            type = 'MeshDrawMode',
                            name = 'mode',
                            description = 'The mode used when drawing the Mesh.'
                        }
                    }
                }
            }
        },
        {
            name = 'getDrawRange',
            description = 'Gets the range of vertices used when drawing the Mesh.\n\nIf the Mesh\'s draw range has not been set previously with Mesh:setDrawRange, this function will return nil.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'min',
                            description = 'The index of the first vertex used when drawing, or the index of the first value in the vertex map used if one is set for this Mesh.'
                        },
                        {
                            type = 'number',
                            name = 'max',
                            description = 'The index of the last vertex used when drawing, or the index of the last value in the vertex map used if one is set for this Mesh.'
                        }
                    }
                }
            }
        },
        {
            name = 'getTexture',
            description = 'Gets the texture (Image or Canvas) used when drawing the Mesh.',
            variants = {
                {
                    returns = {
                        {
                            type = 'Texture',
                            name = 'texture',
                            description = 'The Image or Canvas to texture the Mesh with when drawing, or nil if none is set.'
                        }
                    }
                }
            }
        },
        {
            name = 'getVertex',
            description = 'Returns vertex information from the Mesh.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'i',
                            description = 'The index of the the vertex you want to retrieve the information for.'
                        }
                    },
                    returns = {
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'u',
                            description = 'The u vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'v',
                            description = 'The v vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'r',
                            description = 'The red color component.'
                        },
                        {
                            type = 'number',
                            name = 'g',
                            description = 'The green color component.'
                        },
                        {
                            type = 'number',
                            name = 'b',
                            description = 'The blue color component.'
                        },
                        {
                            type = 'number',
                            name = 'a',
                            description = 'The alpha color component.'
                        }
                    }
                }
            }
        },
        {
            name = 'getVertexAttribute',
            description = 'Gets the properties of a specific attribute within a vertex in the Mesh.\n\nMeshes without a custom vertex format specified in love.graphics.newMesh have position as their first attribute, texture coordinates as their second attribute, and color as their third attribute.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'vertexindex',
                            description = 'The index of the the vertex to be modified.'
                        },
                        {
                            type = 'number',
                            name = 'attributeindex',
                            description = 'The index of the attribute within the vertex to be modified.'
                        }
                    },
                    returns = {
                        {
                            type = 'number',
                            name = 'value1',
                            description = 'The value of the first component of the attribute.'
                        },
                        {
                            type = 'number',
                            name = 'value2',
                            description = 'The value of the second component of the attribute.'
                        },
                        {
                            type = 'number',
                            name = '...',
                            description = 'Any additional vertex attribute components.'
                        }
                    }
                }
            }
        },
        {
            name = 'getVertexCount',
            description = 'Returns the total number of vertices in the Mesh.',
            variants = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'num',
                            description = 'The total number of vertices in this Mesh.'
                        }
                    }
                }
            }
        },
        {
            name = 'getVertexMap',
            description = 'Gets the vertex map for the Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn. The vertices, vertex map, and mesh draw mode work together to determine what exactly is displayed on the screen.\n\nIf no vertex map has been set previously via Mesh:setVertexMap, then this function will return nil in LÖVE 0.10.0+, or an empty table in 0.9.2 and older.',
            variants = {
                {
                    returns = {
                        {
                            type = 'table',
                            name = 'vertex_map',
                            description = 'A table containing a list of vertex indices used when drawing.'
                        }
                    }
                }
            }
        },
        {
            name = 'setDrawMode',
            description = 'Sets the mode used when drawing the Mesh.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'MeshDrawMode',
                            name = 'mode',
                            description = 'The mode to use when drawing the Mesh.'
                        }
                    }
                }
            }
        },
        {
            name = 'setDrawRange',
            description = 'Restricts the drawn vertices of the Mesh to a subset of the total.\n\nIf a vertex map is used with the Mesh, this method will set a subset of the values in the vertex map array to use, instead of a subset of the total vertices in the Mesh.\n\nFor example, if Mesh:setVertexMap(1, 2, 3, 1, 3, 4) and Mesh:setDrawRange(4, 6) are called, vertices 1, 3, and 4 will be drawn.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'min',
                            description = 'The index of the first vertex to use when drawing, or the index of the first value in the vertex map to use if one is set for this Mesh.'
                        },
                        {
                            type = 'number',
                            name = 'max',
                            description = 'The index of the last vertex to use when drawing, or the index of the last value in the vertex map to use if one is set for this Mesh.'
                        }
                    }
                },
                {
                    description = 'Allows all vertices in the Mesh to be drawn.'
                }
            }
        },
        {
            name = 'setTexture',
            description = 'Sets the texture (Image or Canvas) used when drawing the Mesh.\n\nWhen called without an argument disables the texture. Untextured meshes have a white color by default.',
            variants = {
                {},
                {
                    arguments = {
                        {
                            type = 'Texture',
                            name = 'texture',
                            description = 'The Image or Canvas to texture the Mesh with when drawing.'
                        }
                    }
                }
            }
        },
        {
            name = 'setVertex',
            description = 'Sets the vertex information for a Mesh.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'i',
                            description = 'The index of the the vertex you want to alter the information for.'
                        },
                        {
                            type = 'number',
                            name = 'x',
                            description = 'The x vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'y',
                            description = 'The y vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'u',
                            description = 'The u vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'v',
                            description = 'The v vertex coordinate.'
                        },
                        {
                            type = 'number',
                            name = 'r',
                            default = '255',
                            description = 'The red color component.'
                        },
                        {
                            type = 'number',
                            name = 'g',
                            default = '255',
                            description = 'The green color component.'
                        },
                        {
                            type = 'number',
                            name = 'b',
                            default = '255',
                            description = 'The blue color component.'
                        },
                        {
                            type = 'number',
                            name = 'a',
                            default = '255',
                            description = 'The alpha color component.'
                        }
                    }
                }
            }
        },
        {
            name = 'setVertexAttribute',
            description = 'Sets the properties of a specific attribute within a vertex in the Mesh.\n\nMeshes without a custom vertex format specified in love.graphics.newMesh have position as their first attribute, texture coordinates as their second attribute, and color as their third attribute.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'vertexindex',
                            description = 'The index of the the vertex to be modified.'
                        },
                        {
                            type = 'number',
                            name = 'attributeindex',
                            description = 'The index of the attribute within the vertex to be modified.'
                        },
                        {
                            type = 'number',
                            name = 'value1',
                            description = 'The value of the first component of the attribute.'
                        },
                        {
                            type = 'number',
                            name = 'value2',
                            description = 'The value of the second component of the attribute.'
                        },
                        {
                            type = 'number',
                            name = '...',
                            description = 'Any additional vertex attribute components.'
                        }
                    }
                }
            }
        },
        {
            name = 'setVertexColors',
            description = 'Sets if the per-vertex colors are used when rendering instead of the constant color (constant color being love.graphics.setColor or SpriteBatch:setColor)\n\nThe per-vertex colors are automatically enabled by default when making a new Mesh or when doing Mesh:setVertex, but only if at least one vertex color is not the default (255,255,255,255).',
            variants = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'on',
                            description = 'True to use per-vertex coloring.'
                        }
                    }
                }
            }
        },
        {
            name = 'setVertexMap',
            description = 'Sets the vertex map for a Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn.\n\nThe vertex map allows you to re-order or reuse vertices when drawing without changing the actual vertex parameters or duplicating vertices. It is especially useful when combined with different Mesh draw modes.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'table',
                            name = 'vertex_map',
                            description = 'A table containing a list of vertex indices to use when drawing. Values must be in the range of [1, Mesh:getVertexCount()].'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'vi1',
                            description = 'The index of the first vertex to use when drawing. Must be in the range of [1, Mesh:getVertexCount()].'
                        },
                        {
                            type = 'number',
                            name = 'vi2',
                            description = 'The index of the second vertex to use when drawing.'
                        },
                        {
                            type = 'number',
                            name = 'vi3',
                            description = 'The index of the third vertex to use when drawing.'
                        }
                    }
                }
            }
        },
        {
            name = 'setVertices',
            description = 'Replaces all vertices in the Mesh with new ones.',
            variants = {
                {
                    arguments = {
                        {
                            type = 'table',
                            name = 'vertex_map',
                            description = 'The table filled with vertex information tables for each vertex.',
                            table = {
                                {
                                    type = 'number',
                                    name = 'x',
                                    description = 'The position of the vertex on the x-axis.'
                                },
                                {
                                    type = 'number',
                                    name = 'y',
                                    description = 'The position of the vertex on the y-axis.'
                                },
                                {
                                    type = 'number',
                                    name = 'u',
                                    default = '0',
                                    description = 'The horizontal component of the texture coordinate. Texture coordinates are normally in the range of [0, 1], but can be greater or less (see WrapMode.)'
                                },
                                {
                                    type = 'number',
                                    name = 'v',
                                    default = '0',
                                    description = 'The vertical component of the texture coordinate. Texture coordinates are normally in the range of [0, 1], but can be greater or less (see WrapMode.)'
                                },
                                {
                                    type = 'number',
                                    name = 'r',
                                    default = '255',
                                    description = 'The red color component.'
                                },
                                {
                                    type = 'number',
                                    name = 'g',
                                    default = '255',
                                    description = 'The green color component.'
                                },
                                {
                                    type = 'number',
                                    name = 'b',
                                    default = '255',
                                    description = 'The blue color component.'
                                },
                                {
                                    type = 'number',
                                    name = 'a',
                                    default = '255',
                                    description = 'The alpha color component.'
                                }
                            }
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
