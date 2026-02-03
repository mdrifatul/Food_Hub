import { Router } from "express";
import { UserRole } from "../../../generated/client/enums";
import { auth } from "../../middleware/auth";
import { ReviewController } from "./review.controller";

const router = Router();
router.post("/", auth(UserRole.USER), ReviewController.createReview);
router.get("/:id", auth(UserRole.USER), ReviewController.getReviewsByMeal);
export const ReviewRouter: Router = router;
