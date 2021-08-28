.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsMsg;
.super Ljava/lang/Object;
.source "ImsMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify:B = 0x3t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Request:B = 0x1t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Response:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "NONE"

    const-string v1, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Request"

    const-string v2, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Response"

    const-string v3, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsMsg;->names:[Ljava/lang/String;

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

    .line 14
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsMsg;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
