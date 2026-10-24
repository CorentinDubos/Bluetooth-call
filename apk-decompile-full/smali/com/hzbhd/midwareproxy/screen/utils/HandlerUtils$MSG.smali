.class public final enum Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;
.super Ljava/lang/Enum;
.source "HandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

.field public static final enum DEFAULT:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

.field public static final enum MSHOWBACKGROUNDWIDGET:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

.field public static final enum MSHOWWORKSPACEAPP:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

.field public static final enum REFRESH_UI:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->DEFAULT:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    const-string v1, "REFRESH_UI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->REFRESH_UI:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    const-string v1, "MSHOWBACKGROUNDWIDGET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->MSHOWBACKGROUNDWIDGET:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    const-string v1, "MSHOWWORKSPACEAPP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->MSHOWWORKSPACEAPP:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    .line 18
    sget-object v6, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->DEFAULT:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->REFRESH_UI:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->MSHOWBACKGROUNDWIDGET:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;
    .locals 1

    if-ltz p0, :cond_1

    .line 21
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->values()[Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->values()[Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 23
    :cond_1
    :goto_0
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->DEFAULT:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;
    .locals 1

    .line 18
    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;
    .locals 1

    .line 18
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    return-object v0
.end method
