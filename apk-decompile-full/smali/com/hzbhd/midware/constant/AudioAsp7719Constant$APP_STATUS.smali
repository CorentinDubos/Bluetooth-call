.class public final enum Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;
.super Ljava/lang/Enum;
.source "AudioAsp7719Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AudioAsp7719Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APP_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum APP_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum BT_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum CAMERA_VIDEO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum NAVI_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum NAVI_VIDEO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum NAVI_VIDEO_MANUAL_REQ:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

.field public static final enum TPMS_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 143
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "BT_AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->BT_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 144
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "NAVI_AUDIO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->NAVI_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 145
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "NAVI_VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->NAVI_VIDEO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 146
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "CAMERA_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->CAMERA_VIDEO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 147
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "NAVI_VIDEO_MANUAL_REQ"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->NAVI_VIDEO_MANUAL_REQ:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 148
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "APP_AUDIO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->APP_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 149
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const-string v1, "TPMS_AUDIO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->TPMS_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    .line 142
    sget-object v9, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->BT_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->NAVI_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->NAVI_VIDEO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->CAMERA_VIDEO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->NAVI_VIDEO_MANUAL_REQ:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->APP_AUDIO:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;
    .locals 1

    .line 142
    const-class v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;
    .locals 1

    .line 142
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$APP_STATUS;

    return-object v0
.end method
