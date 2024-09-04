import fs from 'fs';
import axios from 'axios';

async function generateSitemap() {
  const baseUrl = 'https://cocktails-factory.vercel.app';

  // URLs statiques
  const staticUrls = [
    '',
    '/recipes',
    '/articles',
    '/articles/materials',
    '/articles/ingredients',
    '/articles/techniques',
  ];

  const urls = staticUrls.map((url) => `<url><loc>${baseUrl}${url}</loc><changefreq>weekly</changefreq><priority>0.8</priority></url>`);

  try {
    // Générer les URLs dynamiques pour les recettes
    const recipesResponse = await axios.get(`${baseUrl}/api/recipes`); // Remplace par ton API réelle
    const recipes = recipesResponse.data;
    recipes.forEach((recipe) => {
      urls.push(`<url><loc>${baseUrl}/recipes/${recipe.id}</loc><changefreq>weekly</changefreq><priority>0.6</priority></url>`);
    });

    // Générer les URLs dynamiques pour les matériaux
    const materialsResponse = await axios.get(`${baseUrl}/api/materials`); // Remplace par ton API réelle
    const materials = materialsResponse.data;
    materials.forEach((material) => {
      urls.push(`<url><loc>${baseUrl}/articles/materials/${material.id}</loc><changefreq>monthly</changefreq><priority>0.6</priority></url>`);
    });

    // Construire le sitemap XML
    const sitemap = `<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n${urls.join('\n')}\n</urlset>`;

    // Écrire le fichier sitemap.xml
    fs.writeFileSync('sitemap.xml', sitemap);
    console.log('Sitemap generated successfully!');
  } catch (err) {
    console.error('Error generating sitemap:', err);
  }
}

generateSitemap();
