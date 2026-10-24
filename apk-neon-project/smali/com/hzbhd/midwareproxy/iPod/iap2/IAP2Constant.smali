.class public Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant;
.super Ljava/lang/Object;
.source "IAP2Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;,
        Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;,
        Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$IMediaItem;,
        Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$IMediaLibraryInfo;
    }
.end annotation


# static fields
.field public static final HID_CLICK:B = 0x3t

.field public static final HID_PAUSE:B = 0x1t

.field public static final HID_PLAY:B = 0x0t

.field public static final HID_PLAY_PAUSE:B = 0x6t

.field public static final HID_PRESS_DOWN:B = 0x0t

.field public static final HID_PRESS_UP:B = 0x1t

.field public static final HID_REPEAT:B = 0x5t

.field public static final HID_SCAN_NEXT_TRACK:B = 0x2t

.field public static final HID_SCAN_PREV_TRACK:B = 0x3t

.field public static final HID_SHUFFLE:B = 0x4t

.field public static final PLAYBACK_STATUS_PAUSED:B = 0x2t

.field public static final PLAYBACK_STATUS_PLAYING:B = 0x1t

.field public static final PLAYBACK_STATUS_SEEK_BACKWARD:B = 0x4t

.field public static final PLAYBACK_STATUS_SEEK_FORWARD:B = 0x3t

.field public static final PLAYBACK_STATUS_STOPPED:B = 0x0t

.field public static final REPEAT_ALL:B = 0x2t

.field public static final REPEAT_OFF:B = 0x0t

.field public static final REPEAT_ONE:B = 0x1t

.field public static final SHUFFLE_ALBUMS:B = 0x2t

.field public static final SHUFFLE_OFF:B = 0x0t

.field public static final SHUFFLE_SONGS:B = 0x1t

.field public static final URI_MEDIA_ITEMS:Ljava/lang/String; = "content://com.hzbhd.midware.service.ipod.iap2/media_items"

.field public static final URI_MEDIA_LIBRARY:Ljava/lang/String; = "content://com.hzbhd.midware.service.ipod.iap2/media_library"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
