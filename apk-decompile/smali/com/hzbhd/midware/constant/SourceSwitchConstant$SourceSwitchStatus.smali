.class public final enum Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;
.super Ljava/lang/Enum;
.source "SourceSwitchConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SourceSwitchConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceSwitchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum BT_disconnect:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum End:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum NewSource_RUN:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum PreSource_UIFinish:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum PreSource_stop:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum Start:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

.field public static final enum StartActivity:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 42
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->Start:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 43
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "BT_disconnect"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->BT_disconnect:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 44
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "PreSource_stop"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->PreSource_stop:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 45
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "NewSource_RUN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->NewSource_RUN:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 46
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "StartActivity"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->StartActivity:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 47
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "PreSource_UIFinish"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->PreSource_UIFinish:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 48
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const-string v1, "End"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->End:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    .line 41
    sget-object v9, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->Start:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->BT_disconnect:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->PreSource_stop:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->NewSource_RUN:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->StartActivity:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->PreSource_UIFinish:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->$VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;
    .locals 1

    .line 41
    const-class v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;
    .locals 1

    .line 41
    sget-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->$VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceSwitchStatus;

    return-object v0
.end method
