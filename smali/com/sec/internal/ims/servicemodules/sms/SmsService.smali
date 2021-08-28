.class public Lcom/sec/internal/ims/servicemodules/sms/SmsService;
.super Lcom/sec/ims/sms/ISmsService$Stub;
.source "SmsService.java"


# instance fields
.field private final mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 23
    invoke-direct {p0}, Lcom/sec/ims/sms/ISmsService$Stub;-><init>()V

    .line 24
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 25
    return-void
.end method


# virtual methods
.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    .line 37
    return-void
.end method

.method public getSmsFallback(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getSmsFallback(I)Z

    move-result v0

    return v0
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    .line 31
    return-void
.end method

.method public sendDeliverReport(I[B)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendDeliverReport(I[B)V

    .line 54
    return-void
.end method

.method public sendRPSMMA(ILjava/lang/String;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "smscAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/4 v2, 0x0

    const-string v4, "application/vnd.3gpp.sms"

    const/16 v5, 0x101

    const/4 v6, 0x1

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 59
    return-void
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 43
    return-void
.end method

.method public sendSMSResponse(ZI)V
    .locals 1
    .param p1, "isSuccess"    # Z
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSResponse(ZI)V

    .line 49
    return-void
.end method
