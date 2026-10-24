.class public final enum Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;
.super Ljava/lang/Enum;
.source "DefaultDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISPLAY_ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

.field public static final enum DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

.field public static final enum DISPLAY_ORIENTATION_180:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

.field public static final enum DISPLAY_ORIENTATION_270:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

.field public static final enum DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 108
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    const-string v1, "DISPLAY_ORIENTATION_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    .line 109
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    const-string v1, "DISPLAY_ORIENTATION_90"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    .line 110
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    const-string v1, "DISPLAY_ORIENTATION_180"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_180:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    .line 111
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    const-string v1, "DISPLAY_ORIENTATION_270"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_270:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    .line 107
    sget-object v6, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_180:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->$VALUES:[Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;
    .locals 1

    .line 107
    const-class v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;
    .locals 1

    .line 107
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->$VALUES:[Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    return-object v0
.end method
