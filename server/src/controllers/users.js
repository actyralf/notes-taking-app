import db from "../util/db-connect.js";
export async function getUsers(_, res) {
  try {
    const users = await db("users");
    return res.json(users);
  } catch (err) {
    console.log(err);
    return res.status(500).json({ msg: "error" });
  }
}
