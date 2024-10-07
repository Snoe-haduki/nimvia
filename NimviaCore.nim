import std/os, std/strutils, std/times
import nigui
import vulkan
import DeviceManager.nim
import RenderManager.nim
import RogManager.nim
import EffectManager.nim
import NetworkManager.nim
import PhysicsManager.nim
import UserinterfaceManager.nim
import ScriptManager.nim
import SoundManager.nim
import AudioManager.nim
import ResourceManage.nim
import PlaginManager.nim
import ModelManager.nim
import AnimationManager.nim


type
  GameEngine = ref Object
    window: nigui.Window
    vulkanInstance: VulkanInstance
    deviceManager: DeviceManager

proc newGameEngine(): GameEngine =
  let engine = GameEngine()
  let window = newwindow()
  let vulkanInstance = newVulkanInstance()
  let deviceManager = createDeviceManager(vulkanInstance, surface)
  result = GameEngine(

    deviceManager = deviceManager,

  )

