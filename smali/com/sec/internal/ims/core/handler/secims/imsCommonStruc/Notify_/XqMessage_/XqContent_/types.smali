.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent_/types;
.super Ljava/lang/Object;
.source "types.java"


# static fields
.field public static final STRING:I = 0x4

.field public static final UCHAR:I = 0x1

.field public static final UINT32:I = 0x3

.field public static final UN:I = 0x0

.field public static final USHORT:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    const-string v0, "UN"

    const-string v1, "UCHAR"

    const-string v2, "USHORT"

    const-string v3, "UINT32"

    const-string v4, "STRING"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent_/types;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # I

    .line 15
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent_/types;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
