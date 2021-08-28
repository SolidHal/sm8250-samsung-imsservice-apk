.class public Lcom/sec/internal/google/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# instance fields
.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mPhoneId:I

.field private mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

.field private mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 115
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 22
    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 23
    new-instance v0, Lcom/sec/internal/google/ImsUtImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsUtImpl$1;-><init>(Lcom/sec/internal/google/ImsUtImpl;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

    .line 116
    iput p1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsUtImpl;

    .line 19
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/google/ImsUtImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsUtImpl;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsUtImpl;->convertErrorReasonToFw(I)I

    move-result v0

    return v0
.end method

.method private convertErrorReasonToFw(I)I
    .locals 2
    .param p1, "error"    # I

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "errReason":I
    const/16 v1, 0x193

    if-eq p1, v1, :cond_3

    const/16 v1, 0x194

    if-eq p1, v1, :cond_2

    const/16 v1, 0x198

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    const/16 v0, 0x325

    .line 352
    goto :goto_0

    .line 345
    :cond_1
    const/16 v0, 0x324

    .line 346
    goto :goto_0

    .line 354
    :cond_2
    const/16 v0, 0x321

    .line 355
    goto :goto_0

    .line 348
    :cond_3
    const/16 v0, 0x323

    .line 349
    nop

    .line 359
    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public isUssdEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->isUssdEnabled(I)Z

    move-result v0

    return v0
.end method

.method public queryCLIP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, -0x1

    return v0

    .line 185
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCLIP(I)I

    move-result v0

    return v0
.end method

.method public queryCLIR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, -0x1

    return v0

    .line 174
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCLIR(I)I

    move-result v0

    return v0
.end method

.method public queryCOLP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, -0x1

    return v0

    .line 207
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCOLP(I)I

    move-result v0

    return v0
.end method

.method public queryCOLR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 194
    const/4 v0, -0x1

    return v0

    .line 196
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCOLR(I)I

    move-result v0

    return v0
.end method

.method public queryCallBarring(I)I
    .locals 3
    .param p1, "cbType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, -0x1

    return v0

    .line 140
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    const/16 v2, 0xff

    invoke-interface {v0, v1, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallBarring(III)I

    move-result v0

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 2
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, -0x1

    return v0

    .line 324
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallBarring(III)I

    move-result v0

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 2
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, -0x1

    return v0

    .line 152
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallForward(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryCallWaiting()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, -0x1

    return v0

    .line 163
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallWaiting(I)I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 316
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 216
    return v1

    .line 219
    :cond_0
    return v1
.end method

.method public updateCLIP(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, -0x1

    return v0

    .line 284
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCLIP(IZ)I

    move-result v0

    return v0
.end method

.method public updateCLIR(I)I
    .locals 2
    .param p1, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, -0x1

    return v0

    .line 272
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCLIR(II)I

    move-result v0

    return v0
.end method

.method public updateCOLP(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, -0x1

    return v0

    .line 307
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCOLP(IZ)I

    move-result v0

    return v0
.end method

.method public updateCOLR(I)I
    .locals 2
    .param p1, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, -0x1

    return v0

    .line 296
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCOLR(II)I

    move-result v0

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, -0x1

    return v0

    .line 230
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    const/16 v4, 0xff

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 331
    const/4 v0, -0x1

    return v0

    .line 333
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, -0x1

    return v0

    .line 238
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 7
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, -0x1

    return v0

    .line 249
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallForward(IIILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, -0x1

    return v0

    .line 260
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallWaiting(IZI)I

    move-result v0

    return v0
.end method
