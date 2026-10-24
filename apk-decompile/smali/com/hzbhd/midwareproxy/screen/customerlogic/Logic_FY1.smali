.class Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_FY1;
.super Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;
.source "Logic_FY1.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_FY1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_FY1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;-><init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V

    return-void
.end method


# virtual methods
.method public screenResponse([I)V
    .locals 3

    .line 15
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_FY1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-static {p1, v2}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-super {p0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;->screenResponse([I)V

    return-void
.end method
