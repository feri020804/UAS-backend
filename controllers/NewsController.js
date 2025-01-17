// import Model News
import News from '../models/News.js';

// buat class NewsController
class NewsController {
  // buat fungsi
  async index(req, res) {
    const news = await News.index();
    res.json(news);
  }

  async tambah(req, res) {
    const data = req.body;
    const news = await News.tambah(data);
    res.json(news);
  }

  async edit(req, res) {
    const id = req.params.id;
    const data = req.body;
    const news = await News.edit(id, data);
    res.json(news);
  }

  async hapus(req, res) {
    const id = req.params.id;
    const news = await News.hapus(id);
    res.json(news);
  }

  async show(req, res) {
    const id = req.params.id;
    const news = await News.show(id);
    res.json(news);
  }

  async search(req, res) {
    const query = req.query;
    const news = await News.search(query);
    res.json(news);
  }

  async category(req, res) {
    const category = req.params.category;
    const news = await News.category(category);
    res.json(news);
  }
}

// membuat object NewsController
const object = new NewsController();

// export object NewsController
export default object;
