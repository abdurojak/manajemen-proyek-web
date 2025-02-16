<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProjectController extends Controller
{
    public function __construct()
    {
        $this->authorizeResource(Project::class, 'project');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $user = Auth::user();

        $projects = Project::where('user_id', $user->id)->get();

        if (count($projects) == 0) {
            return response()->json([
                'message' => 'Anda belum memiliki project',
            ], 200);
        }

        return response()->json([
            'message' => 'Daftar proyek Anda',
            'projects' => $projects
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);

        $project = Project::create([
            'user_id' => Auth::id(),
            'name' => $request->name,
            'description' => $request->description,
        ]);

        return response()->json([
            'message' => 'Proyek berhasil dibuat',
            'project' => $project
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Project $project)
    {
        //
        if ($project->user_id !== Auth::id()) {
            return response()->json(['message' => 'Anda tidak memiliki akses ke proyek ini'], 403);
        }

        return response()->json([
            'message' => 'Detail proyek',
            'project' => $project
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Project $project)
    {
        //
        if ($project->user_id !== Auth::id()) {
            return response()->json(['message' => 'Anda tidak memiliki akses untuk mengubah proyek ini'], 403);
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
        ]);

        $project->update($request->only(['name', 'description']));

        return response()->json([
            'message' => 'Proyek berhasil diperbarui',
            'project' => $project
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Project $project)
    {
        //
        if ($project->user_id !== Auth::id()) {
            return response()->json(['message' => 'Anda tidak memiliki akses untuk menghapus proyek ini'], 403);
        }

        $project->delete();

        return response()->json(['message' => 'Proyek berhasil dihapus'], 200);
    }
}
