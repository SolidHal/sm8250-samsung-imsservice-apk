.class public final enum Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
.super Ljava/lang/Enum;
.source "BaseSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

.field public static final enum BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

.field public static final enum DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

.field public static final enum UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 69
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 70
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    const-string v1, "UPLOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 71
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    const-string v1, "BULK_UPLOAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 68
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->$VALUES:[Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    .locals 1

    .line 68
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->$VALUES:[Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    return-object v0
.end method
