local RunService = game:GetService("RunService")

export type ReplicaServer = typeof(require(script.ReplicaServer))
export type ReplicaClient = typeof(require(script.ReplicaClient))

if RunService:IsServer() then
	return require(script.ReplicaServer)
else
	local server = script:FindFirstChild("ReplicaServer")
	if server then
		server:Destroy()
	end

	return require(script.ReplicaClient)
end
