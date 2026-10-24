.class public Lcom/hzbhd/mediaScanner/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static AUDIO_FILE_FLAG:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVID_NULL:Ljava/lang/String; = "DEVID.NULL"

.field public static FILTERFILESIZE:[I = null

.field private static IMAGE_FILE_FLAG:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOUNT_PATH_ALL:Ljava/lang/String; = "/mnt"

.field public static final STORAGE_PATH_EMULATED_SD:Ljava/lang/String; = "/storage/emulated/0"

.field public static final STORAGE_PATH_SD0:Ljava/lang/String; = "/storage/extsd1"

.field private static final TAG:Ljava/lang/String; = "CommonUtil"

.field public static THMUBNAIL_PIC_HEIGHT:I = 0xf0

.field public static THMUBNAIL_PIC_WIDTH:I = 0xfa

.field private static VIDEO_FILE_FLAG:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static mComparatorStr:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->FILTERFILESIZE:[I

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    .line 51
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil$3;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$SUPPORT_AUDIO_TYPE:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ".ogg"

    const-string v3, ".3gpp"

    const-string v4, ".mid"

    const-string v5, ".midi"

    const-string v6, ".flac"

    const-string v7, ".dts"

    const-string v8, ".ape"

    const-string v9, ".mp2"

    const-string v10, ".amr"

    const-string v11, ".cd"

    const-string v12, ".wav"

    const-string v13, ".ra"

    const-string v14, ".dtshd"

    const-string v15, ".ec3"

    const-string v2, ".ac3"

    move-object/from16 v16, v3

    const-string v3, ".m4a"

    move-object/from16 v17, v4

    const-string v4, ".pcm"

    move-object/from16 v18, v5

    const-string v5, ".aac"

    move-object/from16 v19, v6

    const-string v6, ".mp3"

    move-object/from16 v20, v7

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    .line 97
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v6, ".wma"

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v7, v20

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    move-object/from16 v1, v19

    move-object/from16 v7, v20

    .line 75
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v7, v20

    .line 53
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    .line 124
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil$3;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$SUPPORT_AUDIO_TYPE:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ".mpeg"

    const-string v2, ".mpg"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 154
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".m4v"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".3g2"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".webm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".avi"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".wmv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".asf"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".rm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".rv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".rmvb"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mov"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".asx"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mjpeg"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".f4v"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".flv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".divx"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".ogm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".m2v"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".vob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 126
    :cond_2
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".m4v"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".3g2"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".webm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".avi"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".wmv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".asf"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".rm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".rv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mov"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".asx"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".mjpeg"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".f4v"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".flv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".divx"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".ogm"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".m2v"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".jpg"

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".wbmp"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lcom/hzbhd/mediaScanner/CommonUtil$1;

    invoke-direct {v0}, Lcom/hzbhd/mediaScanner/CommonUtil$1;-><init>()V

    sput-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->mComparator:Ljava/util/Comparator;

    .line 240
    new-instance v0, Lcom/hzbhd/mediaScanner/CommonUtil$2;

    invoke-direct {v0}, Lcom/hzbhd/mediaScanner/CommonUtil$2;-><init>()V

    sput-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->mComparatorStr:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x19000
        0x4b000
        0x7d000
        0xc8000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStorage(Ljava/lang/String;Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Z
    .locals 3

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkStorage]:storage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonUtil"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 435
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "CommonUtil---out-checkStorage----storage="

    .line 441
    invoke-static {v1, p0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static compareStr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAlbumPicFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "album"

    .line 359
    invoke-static {p0, v0}, Lcom/hzbhd/mediaScanner/CommonUtil;->getPicFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDevID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    const-string v0, ""

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "/"

    const-string v1, "_"

    .line 330
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "DEVID.NULL"

    return-object p0
.end method

.method public static getFilterFileSize(I)I
    .locals 2

    if-lez p0, :cond_0

    .line 423
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->FILTERFILESIZE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 424
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMediaType(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;
    .locals 2

    if-nez p0, :cond_0

    .line 200
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->INVALID:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0

    :cond_0
    const-string v0, "."

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 204
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->INVALID:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0

    .line 206
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 207
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->AUDIO_FILE_FLAG:Ljava/util/LinkedList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->AUDIO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0

    .line 210
    :cond_2
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->VIDEO_FILE_FLAG:Ljava/util/LinkedList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->VIDEO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0

    .line 213
    :cond_3
    sget-object v0, Lcom/hzbhd/mediaScanner/CommonUtil;->IMAGE_FILE_FLAG:Ljava/util/LinkedList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 214
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->IMAGE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0

    .line 216
    :cond_4
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->INVALID:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0
.end method

.method private static getPicFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSTORAGE_PORTByPath(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;
    .locals 4

    const-string v0, "/storage/emulated/0"

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    new-instance p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-direct {p0, v0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 347
    :cond_0
    :try_start_0
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 349
    :catch_0
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    return-object p0
.end method

.method public static getTHMUBNAIL_PIC_HEIGHT()I
    .locals 1

    .line 38
    sget v0, Lcom/hzbhd/mediaScanner/CommonUtil;->THMUBNAIL_PIC_HEIGHT:I

    return v0
.end method

.method public static getTHMUBNAIL_PIC_WIDTH()I
    .locals 1

    .line 30
    sget v0, Lcom/hzbhd/mediaScanner/CommonUtil;->THMUBNAIL_PIC_WIDTH:I

    return v0
.end method

.method public static getThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "thumb"

    .line 355
    invoke-static {p0, v0}, Lcom/hzbhd/mediaScanner/CommonUtil;->getPicFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDeviceExsit(Ljava/lang/String;)Z
    .locals 1

    .line 336
    invoke-static {p0}, Lcom/hzbhd/mediaScanner/CommonUtil;->getDevID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DEVID.NULL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNeedScanPath(Ljava/lang/String;)Z
    .locals 1

    .line 411
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-virtual {v0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNeedScanPathWhenMount(Ljava/lang/String;)Z
    .locals 1

    .line 404
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-virtual {v0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static scanOneDirectory(Ljava/lang/String;Ljava/util/LinkedList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 301
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 302
    array-length v0, p0

    if-gtz v0, :cond_3

    goto :goto_1

    .line 307
    :cond_3
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_5

    .line 308
    aget-object v0, p0, v1

    if-eqz p1, :cond_4

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hzbhd/mediaScanner/CommonUtil;->getMediaType(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->AUDIO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    if-ne v2, v3, :cond_4

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 314
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 315
    sget-object p0, Lcom/hzbhd/mediaScanner/CommonUtil;->mComparatorStr:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 317
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0

    :cond_7
    :goto_1
    return v1
.end method

.method public static scanOneDirectory(Ljava/io/File;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_2
    if-eqz p2, :cond_3

    .line 261
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 264
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 265
    array-length v0, p0

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 270
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_7

    .line 271
    aget-object v1, p0, v0

    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hzbhd/mediaScanner/CommonUtil;->getMediaType(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->AUDIO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    if-ne v2, v3, :cond_6

    .line 275
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    .line 279
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 280
    sget-object p0, Lcom/hzbhd/mediaScanner/CommonUtil;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    if-eqz p2, :cond_9

    .line 282
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 283
    sget-object p0, Lcom/hzbhd/mediaScanner/CommonUtil;->mComparator:Ljava/util/Comparator;

    invoke-static {p2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static setTHMUBNAIL_PIC_HEIGHT(I)V
    .locals 0

    .line 42
    sput p0, Lcom/hzbhd/mediaScanner/CommonUtil;->THMUBNAIL_PIC_HEIGHT:I

    return-void
.end method

.method public static setTHMUBNAIL_PIC_WIDTH(I)V
    .locals 0

    .line 34
    sput p0, Lcom/hzbhd/mediaScanner/CommonUtil;->THMUBNAIL_PIC_WIDTH:I

    return-void
.end method
