.class public Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;
.super Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
.source "LandDisplay.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    .line 9
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse([I)Z
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    const/4 p1, 0x1

    return p1
.end method
