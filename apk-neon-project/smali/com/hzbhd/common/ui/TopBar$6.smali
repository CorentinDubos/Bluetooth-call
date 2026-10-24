.class synthetic Lcom/hzbhd/common/ui/TopBar$6;
.super Ljava/lang/Object;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hzbhd$common$ui$TopBar$Repeat:[I

.field static final synthetic $SwitchMap$com$hzbhd$common$ui$TopBar$SXMSignal:[I

.field static final synthetic $SwitchMap$com$hzbhd$common$ui$TopBar$Shuffle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 528
    invoke-static {}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->values()[Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$SXMSignal:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_0:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$SXMSignal:[I

    sget-object v3, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_1:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    invoke-virtual {v3}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$SXMSignal:[I

    sget-object v4, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_2:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    invoke-virtual {v4}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$SXMSignal:[I

    sget-object v5, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_3:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    invoke-virtual {v5}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 457
    :catch_3
    invoke-static {}, Lcom/hzbhd/common/ui/TopBar$Repeat;->values()[Lcom/hzbhd/common/ui/TopBar$Repeat;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Repeat:[I

    :try_start_4
    sget-object v5, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_ONE:Lcom/hzbhd/common/ui/TopBar$Repeat;

    invoke-virtual {v5}, Lcom/hzbhd/common/ui/TopBar$Repeat;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Repeat:[I

    sget-object v5, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_ALL:Lcom/hzbhd/common/ui/TopBar$Repeat;

    invoke-virtual {v5}, Lcom/hzbhd/common/ui/TopBar$Repeat;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Repeat:[I

    sget-object v5, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_FOLDER:Lcom/hzbhd/common/ui/TopBar$Repeat;

    invoke-virtual {v5}, Lcom/hzbhd/common/ui/TopBar$Repeat;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Repeat:[I

    sget-object v4, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_OFF:Lcom/hzbhd/common/ui/TopBar$Repeat;

    invoke-virtual {v4}, Lcom/hzbhd/common/ui/TopBar$Repeat;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 434
    :catch_7
    invoke-static {}, Lcom/hzbhd/common/ui/TopBar$Shuffle;->values()[Lcom/hzbhd/common/ui/TopBar$Shuffle;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Shuffle:[I

    :try_start_8
    sget-object v3, Lcom/hzbhd/common/ui/TopBar$Shuffle;->SHUFFLE_ON:Lcom/hzbhd/common/ui/TopBar$Shuffle;

    invoke-virtual {v3}, Lcom/hzbhd/common/ui/TopBar$Shuffle;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/hzbhd/common/ui/TopBar$6;->$SwitchMap$com$hzbhd$common$ui$TopBar$Shuffle:[I

    sget-object v2, Lcom/hzbhd/common/ui/TopBar$Shuffle;->SHUFFLE_OFF:Lcom/hzbhd/common/ui/TopBar$Shuffle;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/TopBar$Shuffle;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
