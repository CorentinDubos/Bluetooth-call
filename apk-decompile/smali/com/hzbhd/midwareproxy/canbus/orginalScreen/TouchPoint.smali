.class public Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_UP:I = 0x1


# instance fields
.field private ActionType:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    .line 14
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    .line 44
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    .line 45
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    .line 14
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 50
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    goto :goto_0

    .line 54
    :cond_1
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    .line 56
    :goto_0
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    .line 57
    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    return v0
.end method

.method public setActionType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchPoint{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ActionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->ActionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTouchString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->x:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/TouchPoint;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
