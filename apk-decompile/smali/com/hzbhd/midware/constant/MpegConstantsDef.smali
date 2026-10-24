.class public interface abstract Lcom/hzbhd/midware/constant/MpegConstantsDef;
.super Ljava/lang/Object;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midware/constant/MpegConstantsDef$LANGUAGE_ID;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$OnMpegDivxListener;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;,
        Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:I = 0x12

.field public static final AUTO_DOWN:I = 0x11

.field public static final CAN_CLICK:I = 0x3

.field public static final CLOSE:I = 0xf

.field public static final Clips_CDDA:I = 0x4

.field public static final Clips_DIVX:I = 0x8

.field public static final Clips_Folder:I = 0xf

.field public static final Clips_JPEG:I = 0x5

.field public static final Clips_MP2:I = 0x1

.field public static final Clips_MP3:I = 0x2

.field public static final Clips_MPEG2:I = 0x6

.field public static final Clips_MPEG4:I = 0x7

.field public static final Clips_None:I = 0x0

.field public static final Clips_WMA:I = 0x3

.field public static final CmdGotoChapter:I = 0x1b

.field public static final CmdGotoTime:I = 0x1c

.field public static final DEFAULT_NAME:Ljava/lang/String; = "LOADING..."

.field public static final DELAY_PROGRESSBAR:I = 0x4

.field public static final DISC_DEACTIVE:Ljava/lang/String; = "com.hzbhd.disc.deactive"

.field public static final DISMISS_DIALOG:I = 0x5

.field public static final DISPLAY_INFO:I = 0x8

.field public static final DVD_AUTHORITY:Ljava/lang/String; = "Disc"

.field public static final EQ_TYPE:Ljava/lang/String; = "EQ_TYPE"

.field public static final GET_ALL_FILENAMES:I = 0x4

.field public static final GET_ID3_INFO:I = 0xb

.field public static final GotoTimeCFM:I = 0xac

.field public static final HIDE_CONTROL_INFO:I = 0x14

.field public static final HIDE_VIDEO_BUTTON:I = 0x2

.field public static final ID3_INFO:I = 0x5

.field public static final KEY_INFO:I = 0x7

.field public static final K_0:I = 0x20

.field public static final K_1:I = 0x21

.field public static final K_10P:I = 0x2a

.field public static final K_2:I = 0x22

.field public static final K_3:I = 0x23

.field public static final K_4:I = 0x24

.field public static final K_5:I = 0x25

.field public static final K_6:I = 0x26

.field public static final K_7:I = 0x27

.field public static final K_8:I = 0x28

.field public static final K_9:I = 0x29

.field public static final K_ANGLE:I = 0x37

.field public static final K_ANGLE_LEFT:I = 0x44

.field public static final K_AUDIO:I = 0x35

.field public static final K_CLEAR:I = 0x2b

.field public static final K_DISPLAY:I = 0x39

.field public static final K_DOWN:I = 0x2e

.field public static final K_EJECT:I = 0x1f

.field public static final K_ENTER:I = 0x31

.field public static final K_FASTB:I = 0x17

.field public static final K_FASTF:I = 0x16

.field public static final K_GOTO:I = 0x2c

.field public static final K_LEFT:I = 0x2f

.field public static final K_MENU:I = 0x34

.field public static final K_MUTE:I = 0x3

.field public static final K_NEXT:I = 0x14

.field public static final K_OSD_DISP:I = 0x41

.field public static final K_PAUSE:I = 0x12

.field public static final K_PBC:I = 0x43

.field public static final K_PLAY:I = 0x11

.field public static final K_PREV:I = 0x15

.field public static final K_REDUCE:I = 0x45

.field public static final K_REPEAT:I = 0x1b

.field public static final K_REP_AB:I = 0x1c

.field public static final K_RETURN:I = 0x32

.field public static final K_RIGHT:I = 0x30

.field public static final K_ROTATE_LEFT:I = 0x91

.field public static final K_ROTATE_RIGHT:I = 0x92

.field public static final K_SCAN:I = 0x1e

.field public static final K_SHUFFLE:I = 0x1d

.field public static final K_SLOWF:I = 0x18

.field public static final K_STEP:I = 0x1a

.field public static final K_STOP:I = 0x13

.field public static final K_SUBTITLE:I = 0x36

.field public static final K_TITLE:I = 0x33

.field public static final K_UP:I = 0x2d

.field public static final K_ZOOM:I = 0x38

.field public static final K_ZOOMIN:I = 0x38

.field public static final K_ZOOMOUT:I = 0x93

.field public static final LOADING:I = 0x0

.field public static final LOAD_LIST:I = 0x6

.field public static final LUANCH_MSG_CLASS:I = 0x10

.field public static final ListPageNo:I = 0x9

.field public static final Loading:I = 0x0

.field public static final MCU_KEY_CONTROL_REQ_0x0C:I = 0xc

.field public static final MPEG_COMM_STATUS_CFM:I = 0x1f

.field public static final MPEG_COMM_STATUS_REQ:I = 0x9f

.field public static final MPEG_DEFAULT_VALUE:I = -0x3

.field public static final MPEG_DEVICE_STATUS:I = 0x2

.field public static final MPEG_DEVICE_STATUS_CFM:I = 0x82

.field public static final MPEG_DEVICE_STATUS_CFM_0x82:I = 0x3f

.field public static final MPEG_DEVICE_STATUS_IND:I = 0x84

.field public static final MPEG_DEVICE_STATUS_IND_SPEH:I = 0x83

.field public static final MPEG_DEVICE_STATUS_REQ:I = 0x2

.field public static final MPEG_DISC_REMOVED_IND_0xCE:I = 0xce

.field public static final MPEG_DISC_SRC_IND:I = 0xcc

.field public static final MPEG_DISC_TRAY_TIME_IND:I = 0x17

.field public static final MPEG_DISPLAY_INFO:I = 0x1

.field public static final MPEG_DIVX_CODE_CFM:I = 0x97

.field public static final MPEG_DIVX_CODE_REQ:I = 0x17

.field public static final MPEG_DIVX_DEACTIVE_CODE_CFM:I = 0x99

.field public static final MPEG_DIVX_DEACTIVE_CODE_REQ:I = 0x19

.field public static final MPEG_DIVX_REG_STATUS_CFM:I = 0x96

.field public static final MPEG_DIVX_REG_STATUS_INT:I = 0x9a

.field public static final MPEG_DIVX_REG_STATUS_REQ:I = 0x16

.field public static final MPEG_HEART_BEAT_CFM:I = 0xcd

.field public static final MPEG_HOST_IND:I = 0xf2

.field public static final MPEG_ID3_INFO_CFM:I = 0x8d

.field public static final MPEG_ID3_INFO_IND:I = 0x8e

.field public static final MPEG_ID3_INFO_REQ:I = 0xd

.field public static final MPEG_INFO_ANGLE_CFM:I = 0xa4

.field public static final MPEG_INFO_AUDIO_CFM:I = 0xa2

.field public static final MPEG_INFO_BITRATE_CFM:I = 0xa5

.field public static final MPEG_INFO_DISCTYPE_CFM:I = 0xa1

.field public static final MPEG_INFO_DISPLAY_CFM:I = 0x9d

.field public static final MPEG_INFO_DISPLAY_REQ:I = 0x1d

.field public static final MPEG_INFO_MENU_STATUS_CFM:I = 0x9e

.field public static final MPEG_INFO_SUBTITLE_CFM:I = 0xa3

.field public static final MPEG_INIT_CFM:I = 0x80

.field public static final MPEG_INIT_REQ:I = 0x0

.field public static final MPEG_KEYBOARD_STATUS_INT:I = 0x9b

.field public static final MPEG_KEY_CONTROL_CFM:I = 0x85

.field public static final MPEG_KEY_CONTROL_REQ:I = 0x5

.field public static final MPEG_MESSAGE_IND:I = 0x2a

.field public static final MPEG_MONITOR_CFM:I = 0x81

.field public static final MPEG_MONITOR_REQ:I = 0x1

.field public static final MPEG_MSG_NULL:I = 0xfff

.field public static final MPEG_NORMAL_MODE:I = 0x0

.field public static final MPEG_OTHER_KEY_EVENT:I = 0x3

.field public static final MPEG_PASSWORD_CFM:I = 0xa6

.field public static final MPEG_PASSWORD_REQ:I = 0x1e

.field public static final MPEG_PLAYLIST_INDEX_CFM:I = 0x8f

.field public static final MPEG_PLAYLIST_INDEX_IND:I = 0x90

.field public static final MPEG_PLAYLIST_INDEX_REQ:I = 0xf

.field public static final MPEG_PLAYLIST_NAME_CFM:I = 0x91

.field public static final MPEG_PLAYLIST_NAME_IND:I = 0x92

.field public static final MPEG_PLAYLIST_NAME_REQ:I = 0x11

.field public static final MPEG_PLAY_INFO_CFM:I = 0x8b

.field public static final MPEG_PLAY_INFO_IND:I = 0x8c

.field public static final MPEG_PLAY_INFO_REQ:I = 0xb

.field public static final MPEG_PLAY_STATUS:I = 0x3

.field public static final MPEG_PLAY_STATUS_CFM:I = 0x89

.field public static final MPEG_PLAY_STATUS_IND:I = 0x8a

.field public static final MPEG_PLAY_STATUS_REQ:I = 0x9

.field public static final MPEG_QUERY_END:I = 0x4

.field public static final MPEG_REMOTE_DIRECT:I = 0x2

.field public static final MPEG_REPORT_TS_POS:I = 0x7

.field public static final MPEG_STATUS_REQ:I = 0x1

.field public static final MPEG_SWTICH_TO_DISC_SRC_REQ:I = 0x18

.field public static final MPEG_SYS_SETTINGS_IND:I = 0x1a

.field public static final MPEG_TEST_MODE:I = 0x1

.field public static final MPEG_TEST_MODE_IND:I = 0x23

.field public static final MPEG_TEST_NUM_IND:I = 0xb3

.field public static final MPEG_UPGRADE_IND_0x94:I = 0x94

.field public static final MPEG_UPGRADE_START_CFM:I = 0x93

.field public static final MPEG_UPGRADE_START_CFM_0x93:I = 0x93

.field public static final MPEG_UPGRADE_START_REQ_0x13:I = 0x13

.field public static final MPEG_VERSION_CFM:I = 0x95

.field public static final MPEG_VERSION_REQ:I = 0x15

.field public static final MPEG_VIDEO_DISP_INFO_IND:I = 0xb1

.field public static final MediaPreference:Ljava/lang/String; = "media"

.field public static final MediaType_CDDA:I = 0x6

.field public static final MediaType_Clips:I = 0x7

.field public static final MediaType_DVDAudio:I = 0x2

.field public static final MediaType_DVDVR:I = 0x3

.field public static final MediaType_DVDVideo:I = 0x1

.field public static final MediaType_None:I = 0x0

.field public static final MediaType_SVCD:I = 0x4

.field public static final MediaType_USB:I = 0x8

.field public static final MediaType_UnKnow:I = 0xf

.field public static final MediaType_VCD:I = 0x5

.field public static final PARING_CONTROL:I = 0x17

.field public static final PASSWORD_ERROR:I = 0x1a

.field public static final PLAYPAGE_ANIMATION:I = 0x19

.field public static final PLAY_INFO:I = 0x6

.field public static final Pause:I = 0x30

.field public static final Play:I = 0x20

.field public static final Pre_Stop:I = 0x40

.field public static final REAR_SOURCE:Ljava/lang/String; = "REAR_SOURCE"

.field public static final REFRESH_LIST:I = 0x7

.field public static final REFRESH_TIME:I = 0x8

.field public static final RELOADING:I = 0x18

.field public static final Root_Folder:I = 0xffff

.field public static final SHOW_CONTROL_INFO:I = 0x13

.field public static final SHOW_DISPLAY_INFO:I = 0x15

.field public static final SHOW_HEAD_INFO:I = 0x16

.field public static final SHOW_ID3_INFO:I = 0xc

.field public static final SHOW_MAIN_LAYOUT:I = 0xe

.field public static final SHOW_PLAY_PAGE:I = 0xa

.field public static final SHOW_VIDEO:I = 0x1

.field public static final SOURCE_BT:I = 0xf

.field public static final SOURCE_DISC:I = 0x1

.field public static final SOURCE_OFF:I = 0x0

.field public static final SOURCE_RADIO:I = 0x5

.field public static final Stop:I = 0x41

.field public static final TAG:Ljava/lang/String; = "Disc"

.field public static final UPDATE_PLAY_STATUS:I = 0xd

.field public static final p1:I = 0x1

.field public static final p2:I = 0x2

.field public static final p3:I = 0x4

.field public static final p4:I = 0x8

.field public static final p5:I = 0x10

.field public static final p6:I = 0x20

.field public static final p7:I = 0x40

.field public static final p8:I = 0x80
