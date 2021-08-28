.class Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;
.super Ljava/lang/Object;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftphoneAccount"
.end annotation


# instance fields
.field mId:I

.field mImpi:Ljava/lang/String;

.field mNonce:Ljava/lang/String;

.field mResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "impi"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mNonce:Ljava/lang/String;

    .line 351
    iput p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mId:I

    .line 352
    iput-object p3, p0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mImpi:Ljava/lang/String;

    .line 353
    iput-object p4, p0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mResponse:Landroid/os/Message;

    .line 354
    return-void
.end method
