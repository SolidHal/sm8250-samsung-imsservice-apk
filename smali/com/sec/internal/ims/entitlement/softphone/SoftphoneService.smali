.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;
.super Landroid/app/Service;
.source "SoftphoneService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mBinder:Landroid/os/IBinder;

    .line 17
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/sec/internal/log/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 45
    .local v0, "pw":Lcom/sec/internal/log/IndentingPrintWriter;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 46
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 38
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mBinder:Landroid/os/IBinder;

    .line 25
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 29
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartCommand(): Received start id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x1

    return v0
.end method
