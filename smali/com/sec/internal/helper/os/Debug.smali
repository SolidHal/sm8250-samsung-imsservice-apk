.class public Lcom/sec/internal/helper/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DEBUG_LEVEL_HIGH:I = 0x3

.field public static final DEBUG_LEVEL_LOW:I = 0x1

.field public static final DEBUG_LEVEL_MID:I = 0x2

.field private static final DEBUG_LEVEL_PROP:Ljava/lang/String; = "ro.boot.debug_level"

.field private static final DEBUG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final DEBUG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field private static final DEBUG_LEVEL_SILENT_LOG:Ljava/lang/String; = "dev.silentlog.on"

.field private static final PRODUCT_SHIP_PROP:Ljava/lang/String; = "ro.product_ship"

.field private static mSilentLogEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/helper/os/Debug;->mSilentLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemDebugLevel()I
    .locals 3

    .line 37
    const/4 v0, 0x2

    .line 38
    .local v0, "level":I
    const-string/jumbo v1, "ro.boot.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "sysDebuglevel":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/internal/helper/os/Debug;->mSilentLogEnabled:Z

    if-nez v2, :cond_0

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const-string v2, "0x494d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const/4 v0, 0x2

    goto :goto_0

    .line 46
    :cond_1
    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const/4 v0, 0x3

    .line 49
    :cond_2
    :goto_0
    return v0
.end method

.method public static isProductShip()Z
    .locals 2

    .line 32
    const v0, true
    return v0
.end method

.method public static setSilentLogEnabled()V
    .locals 2

    .line 53
    const-string v0, "dev.silentlog.on"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/helper/os/Debug;->mSilentLogEnabled:Z

    .line 54
    return-void
.end method
