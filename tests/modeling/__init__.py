# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from sqlalchemy import (
    Column,
    Text,
    Integer,
)

from aria.modeling import (
    models,
    types as modeling_types,
    mixins
)


class MockModel(models.aria_declarative_base, mixins.ModelMixin): #pylint: disable=abstract-method
    __tablename__ = 'mock_model'
    model_dict = Column(modeling_types.Dict)
    model_list = Column(modeling_types.List)
    value = Column(Integer)
    name = Column(Text)
