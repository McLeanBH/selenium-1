/*
Copyright 2007-2010 Selenium committers

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 */

package org.openqa.selenium.interactions.internal;

import org.openqa.selenium.internal.Locatable;

/**
 * Base class for all actions.
 */
public abstract class BaseAction {
  protected final Locatable where;

  /**
   * Common c'tor - a locatable element is provided.
   * 
   * @param actionLocation provider of coordinates for the action.
   */
  protected BaseAction(Locatable actionLocation) {
    this.where = actionLocation;
  }

  /**
   * No locatable element provided - action in the context of the previous action.
   */
  protected BaseAction() {
    this.where = null;
  }
}
