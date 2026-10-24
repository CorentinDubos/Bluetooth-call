.class public final enum Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;
.super Ljava/lang/Enum;
.source "SettingConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SettingConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoTestDVDOprate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

.field public static final enum next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

.field public static final enum pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

.field public static final enum play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

.field public static final enum prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

.field public static final enum stop:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 289
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    const-string v1, "prev"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    .line 290
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    const-string v1, "next"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    .line 291
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    const-string v1, "pause"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    .line 292
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    const-string v1, "play"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    .line 293
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    const-string/jumbo v1, "stop"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->stop:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    .line 288
    sget-object v7, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;
    .locals 1

    .line 288
    const-class v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;
    .locals 1

    .line 288
    sget-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    return-object v0
.end method
