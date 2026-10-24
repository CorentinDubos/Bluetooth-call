.class public final enum Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;
.super Ljava/lang/Enum;
.source "channelManagerDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/channelManagerDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SWITCH_RESULT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

.field public static final enum fail:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

.field public static final enum nodevice:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

.field public static final enum notsupport:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

.field public static final enum success:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 144
    new-instance v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->success:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    .line 145
    new-instance v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    const-string v1, "fail"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->fail:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    .line 146
    new-instance v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    const-string v1, "notsupport"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->notsupport:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    .line 147
    new-instance v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    const-string v1, "nodevice"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->nodevice:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    .line 143
    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->success:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->fail:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->notsupport:Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;
    .locals 1

    .line 143
    const-class v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;
    .locals 1

    .line 143
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/channelManagerDef$SWITCH_RESULT_TYPE;

    return-object v0
.end method
