.class public final enum Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;
.super Ljava/lang/Enum;
.source "DrConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/dr/DrConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DRNMEAListenerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

.field public static final enum DR_ANDROID_AUTO:Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

.field public static final enum DR_CARPLAY:Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    const-string v1, "DR_CARPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->DR_CARPLAY:Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    .line 20
    new-instance v0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    const-string v1, "DR_ANDROID_AUTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->DR_ANDROID_AUTO:Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    .line 18
    sget-object v4, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->DR_CARPLAY:Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->$VALUES:[Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;
    .locals 1

    .line 18
    const-class v0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;
    .locals 1

    .line 18
    sget-object v0, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->$VALUES:[Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;

    return-object v0
.end method
