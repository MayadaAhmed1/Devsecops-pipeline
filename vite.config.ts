import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { UserConfigExport } from 'vitest/config';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  optimizeDeps: {
    exclude: ['lucide-react'],
  },
  test: {
    globals: true, // Optional, enables global test functions (e.g., expect, describe, it)
    environment: 'jsdom', // Use 'node' for Node.js environment, 'jsdom' for browser-like environment
    coverage: {
      provider: 'c8', // Or 'v8' (alternative coverage providers)
      reporter: ['text', 'lcov', 'html'], // Coverage reporters
      all: true, // Collect coverage from all files, even those not directly tested
    },
    // Add other Vitest config options here if needed (e.g., setupFiles, testTimeout, etc.)
  } as UserConfigExport,
});
