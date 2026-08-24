-- 1. Cargar la librería visual (Rayfield) para crear el menú interactivo
local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

-- 2. Crear la ventana principal del script
local Window = Rayfield:CreateWindow({
   Name = "Mi Script Personalizado - BlockSpin",
   LoadingTitle = "Cargando Menú...",
   LoadingSubtitle = "por TuNombre",
   ConfigurationSaving = {
      Enabled = false
   }
})

-- 3. Crear una pestaña en el menú para las funciones automáticas (Farming)
local FarmTab = Window:CreateTab("Auto Farm", 4483362458) -- Icono opcional

-- Variables de control para los bucles
local autoATM = false

-- 4. Crear un botón de activar/desactivar (Toggle) para farmear cajeros (ATM)
local ATMToggle = FarmTab:CreateToggle({
   Name = "Auto Farm ATM",
   CurrentValue = false,
   Flag = "ToggleATM", 
   Callback = function(Value)
      autoATM = Value
      
      -- Bucle que se ejecuta mientras el Toggle esté activado
      task.spawn(function()
         while autoATM do
            -- Reemplaza con la lógica para teletransportarte o golpear el ATM
            print("Farmeando cajero automáticamente...")
            task.wait(1) -- Tiempo de espera para evitar que el juego se tilde
         end
      end)
   end,
})

-- 5. Crear una pestaña para mejoras de combate o armas
local CombatTab = Window:CreateTab("Combate", 4483362458)

local NoRecoilToggle = CombatTab:CreateToggle({
   Name = "Modificar Armas (Sin Recorte/Recoil)",
   CurrentValue = false,
   Flag = "NoRecoil",
   Callback = function(Value)
      -- Aquí programás la modificación de los archivos locales de tu arma
      if Value then
         print("Recoil desactivado.")
      else
         print("Recoil restaurado.")
      end
   end,
})

-- Notificación visual de que el script se ejecutó correctamente
Rayfield:Notify({
   Title = "¡Script Activo!",
   Content = "Tu código para BlockSpin se ha cargado con éxito.",
   Duration = 5,
   Image = 4483362458,
})
