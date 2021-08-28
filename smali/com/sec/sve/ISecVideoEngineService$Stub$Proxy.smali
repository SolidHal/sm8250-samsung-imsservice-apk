.class Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ISecVideoEngineService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sec/sve/ISecVideoEngineService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iput-object p1, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2260
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bindToNetwork(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2462
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2463
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2464
    invoke-virtual {p1, v0, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2467
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    :goto_0
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2470
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2471
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->bindToNetwork(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2472
    return-void

    .line 2474
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2477
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2479
    nop

    .line 2480
    return-void

    .line 2477
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2479
    throw v2
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4810
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4811
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4812
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4813
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->cpveStartInjection(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4813
    return v3

    .line 4815
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4816
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4819
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    nop

    .line 4822
    return v2

    .line 4819
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    throw v2
.end method

.method public cpveStopInjection()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4831
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4832
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4833
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->cpveStopInjection()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4833
    return v3

    .line 4835
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4839
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4841
    nop

    .line 4842
    return v2

    .line 4839
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4841
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2267
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    return-object v0
.end method

.method public isSupportingCameraMotor()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4570
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4571
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4572
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->isSupportingCameraMotor()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4572
    return v3

    .line 4574
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4575
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 4578
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4580
    nop

    .line 4581
    return v2

    .line 4578
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4580
    throw v2
.end method

.method public onDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2275
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2276
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2277
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2278
    return-void

    .line 2280
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2283
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    nop

    .line 2286
    return-void

    .line 2283
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    throw v2
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/sve/ICmcMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4892
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/sve/ICmcMediaEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4893
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4894
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4895
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4896
    return-void

    .line 4898
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4901
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4903
    nop

    .line 4904
    return-void

    .line 4901
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4903
    throw v2
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/sve/IImsMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4852
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/sve/IImsMediaEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4853
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4854
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4855
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4856
    return-void

    .line 4858
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4861
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4863
    nop

    .line 4864
    return-void

    .line 4861
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4863
    throw v2
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 16
    .param p1, "channel"    # I
    .param p2, "mno"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .param p9, "pdn"    # Ljava/lang/String;
    .param p10, "xqEnabled"    # Z
    .param p11, "ttyChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2575
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2578
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2579
    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2581
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2582
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2584
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2585
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2586
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2587
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2588
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p10, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    if-eqz p11, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2590
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2591
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2592
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-interface/range {v3 .. v14}, Lcom/sec/sve/ISecVideoEngineService;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2592
    return v3

    .line 2594
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2595
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    .line 2598
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2600
    nop

    .line 2601
    return v0

    .line 2598
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2600
    throw v0
.end method

.method public saeDeleteChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2705
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2706
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2707
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeDeleteChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    return v3

    .line 2709
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2713
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2715
    nop

    .line 2716
    return v2

    .line 2713
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2715
    throw v2
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2776
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2777
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2778
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2780
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2781
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->saeEnableSRTP(III[BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2781
    return v3

    .line 2783
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2787
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2789
    nop

    .line 2790
    return v2

    .line 2787
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2789
    throw v2
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2985
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2986
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2987
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetAudioRxTrackId(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2987
    return v3

    .line 2989
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2993
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2995
    nop

    .line 2996
    return v2

    .line 2993
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2995
    throw v2
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2893
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2894
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2895
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2895
    return-object v3

    .line 2897
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2899
    sget-object v3, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/sve/TimeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/sec/sve/TimeInfo;
    goto :goto_0

    .line 2902
    .end local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :cond_1
    const/4 v3, 0x0

    .line 2906
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2908
    nop

    .line 2909
    return-object v3

    .line 2906
    .end local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2908
    throw v2
.end method

.method public saeGetVersion([BI)I
    .locals 5
    .param p1, "version"    # [B
    .param p2, "bufflen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2962
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2963
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2965
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2966
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeGetVersion([BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2966
    return v3

    .line 2968
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2972
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2974
    nop

    .line 2975
    return v2

    .line 2972
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2974
    throw v2
.end method

.method public saeHandleDtmf(IIII)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2727
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2729
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2730
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2731
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeHandleDtmf(IIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2731
    return v3

    .line 2733
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2737
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    nop

    .line 2740
    return v2

    .line 2737
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    throw v2
.end method

.method public saeInitialize(III)V
    .locals 5
    .param p1, "convertedMno"    # I
    .param p2, "dtmfMode"    # I
    .param p3, "sas"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2491
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2493
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2494
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeInitialize(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2495
    return-void

    .line 2497
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    nop

    .line 2503
    return-void

    .line 2500
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    throw v2
.end method

.method public saeModifyChannel(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2684
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2685
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2686
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeModifyChannel(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2686
    return v3

    .line 2688
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2692
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    nop

    .line 2695
    return v2

    .line 2692
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    throw v2
.end method

.method public saeSetAudioPath(II)I
    .locals 5
    .param p1, "dir_in"    # I
    .param p2, "dir_out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3007
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3008
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3009
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetAudioPath(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3009
    return v3

    .line 3011
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3015
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    nop

    .line 3018
    return v2

    .line 3015
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    throw v2
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 34
    .param p1, "channel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2525
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2528
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2529
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2530
    move-object/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2531
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 2532
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2534
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2535
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2536
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2537
    if-eqz p9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2538
    move/from16 v7, p10

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2539
    move/from16 v6, p11

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2540
    move/from16 v5, p12

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    move/from16 v4, p13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2542
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2543
    move/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2544
    move/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2545
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2547
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2548
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2549
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2550
    move/from16 v15, p22

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2551
    move-object/from16 v15, p23

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2552
    move-object/from16 v15, p24

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2553
    move-object/from16 v15, p25

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2554
    move-object/from16 v15, p26

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2555
    move-object/from16 v15, p27

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2556
    move-object/from16 v15, p28

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2557
    move-object/from16 v15, p29

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2558
    move-object/from16 v15, p30

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2559
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2560
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2561
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    move-object/from16 v32, p29

    move-object/from16 v33, p30

    invoke-interface/range {v3 .. v33}, Lcom/sec/sve/ISecVideoEngineService;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2561
    return v3

    .line 2563
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 2567
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    nop

    .line 2570
    return v0

    .line 2567
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    throw v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "type"    # I
    .param p3, "rxtype"    # I
    .param p4, "bitrate"    # I
    .param p5, "inband"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2748
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2755
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2756
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->saeSetDtmfCodecInfo(IIIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2756
    return v3

    .line 2758
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2762
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    nop

    .line 2765
    return v2

    .line 2762
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    throw v2
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2802
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2803
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2804
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpOnCall(III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2804
    return v3

    .line 2806
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2810
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2812
    nop

    .line 2813
    return v2

    .line 2810
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2812
    throw v2
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2846
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2847
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2848
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpTimeout(IJ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2848
    return v3

    .line 2850
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2854
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    nop

    .line 2857
    return v2

    .line 2854
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    throw v2
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 16
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2862
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2865
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2866
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2867
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2868
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2869
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2870
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2871
    move-object/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2872
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2873
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2874
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpXr(IIIII[I)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2880
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2874
    return v3

    .line 2876
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2877
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v3

    .line 2880
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2882
    nop

    .line 2883
    return v0

    .line 2880
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move-object/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2882
    throw v0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2818
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2824
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2825
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2826
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtpTimeout(IJ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2826
    return v3

    .line 2828
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2832
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2834
    nop

    .line 2835
    return v2

    .line 2832
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2834
    throw v2
.end method

.method public saeSetTOS(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "tos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2941
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2942
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2943
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2944
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetTOS(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2944
    return v3

    .line 2946
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2950
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    nop

    .line 2953
    return v2

    .line 2950
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    throw v2
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2914
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2921
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2922
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetVoicePlayDelay(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2922
    return v3

    .line 2924
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2928
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2930
    nop

    .line 2931
    return v2

    .line 2928
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2930
    throw v2
.end method

.method public saeStartChannel(IIZ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2606
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2612
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2614
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2615
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeStartChannel(IIZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2615
    return v3

    .line 2617
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2621
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2623
    nop

    .line 2624
    return v2

    .line 2621
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2623
    throw v2
.end method

.method public saeStartRecording(IIIZ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "samplingRate"    # I
    .param p4, "bIsApVoice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4720
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4721
    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4722
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4723
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4724
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeStartRecording(IIIZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4724
    return v3

    .line 4726
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4727
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4730
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4732
    nop

    .line 4733
    return v2

    .line 4730
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4732
    throw v2
.end method

.method public saeStopChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2662
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2663
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2664
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeStopChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2664
    return v3

    .line 2666
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2670
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2672
    nop

    .line 2673
    return v2

    .line 2670
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2672
    throw v2
.end method

.method public saeStopRecording(IZ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "bIsApVoice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4743
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4744
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4745
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4746
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeStopRecording(IZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4746
    return v3

    .line 4748
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4752
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4754
    nop

    .line 4755
    return v2

    .line 4752
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4754
    throw v2
.end method

.method public saeTerminate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2510
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2511
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2512
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->saeTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2513
    return-void

    .line 2515
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2518
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    nop

    .line 2521
    return-void

    .line 2518
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    throw v2
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 16
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2629
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2632
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2633
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2634
    move/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2635
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2636
    move/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2638
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2639
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2640
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2642
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2643
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2649
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2643
    return v3

    .line 2645
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2646
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 2649
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2651
    nop

    .line 2652
    return v0

    .line 2649
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move/from16 v13, p2

    :goto_1
    move-object/from16 v14, p3

    :goto_2
    move/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2651
    throw v0
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "channel"    # I
    .param p2, "enable"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "frameSize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2402
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2405
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2406
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2407
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2408
    return-void

    .line 2410
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2413
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    nop

    .line 2416
    return-void

    .line 2413
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    throw v2
.end method

.method public setCameraEffect(I)V
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2425
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2426
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->setCameraEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2427
    return-void

    .line 2429
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2432
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    nop

    .line 2435
    return-void

    .line 2432
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    throw v2
.end method

.method public setDisplaySurface(Landroid/view/Surface;I)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2320
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    invoke-virtual {p1, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2324
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2326
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2328
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2329
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setDisplaySurface(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2330
    return-void

    .line 2332
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    nop

    .line 2338
    return-void

    .line 2335
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    throw v2
.end method

.method public setOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2347
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2348
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2349
    return-void

    .line 2351
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2354
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2356
    nop

    .line 2357
    return-void

    .line 2354
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2356
    throw v2
.end method

.method public setPreviewResolution(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2445
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2446
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewResolution(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2447
    return-void

    .line 2449
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2452
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2454
    nop

    .line 2455
    return-void

    .line 2452
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2454
    throw v2
.end method

.method public setPreviewSurface(Landroid/view/Surface;I)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2294
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    invoke-virtual {p1, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2298
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2302
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2303
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewSurface(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2304
    return-void

    .line 2306
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2309
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2311
    nop

    .line 2312
    return-void

    .line 2309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2311
    throw v2
.end method

.method public setZoom(F)V
    .locals 5
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2365
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2366
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2367
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->setZoom(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2368
    return-void

    .line 2370
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2373
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    nop

    .line 2376
    return-void

    .line 2373
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    throw v2
.end method

.method public sreCreateRelayChannel(II)I
    .locals 5
    .param p1, "lhs_stream"    # I
    .param p2, "rhs_stream"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4152
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4153
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4154
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateRelayChannel(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4154
    return v3

    .line 4156
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4157
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4160
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4162
    nop

    .line 4163
    return v2

    .line 4160
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4162
    throw v2
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "mno"    # I
    .param p4, "localIp"    # Ljava/lang/String;
    .param p5, "localPort"    # I
    .param p6, "remoteIp"    # Ljava/lang/String;
    .param p7, "remotePort"    # I
    .param p8, "isIpv6"    # Z
    .param p9, "isMdmn"    # Z
    .param p10, "localRTCPPort"    # I
    .param p11, "remoteRTCPPort"    # I
    .param p12, "pdn"    # Ljava/lang/String;
    .param p13, "xqEnabled"    # Z
    .param p14, "ttyChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4047
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4050
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4051
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4052
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 4053
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4054
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4055
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4057
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4058
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p8, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4059
    if-eqz p9, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4060
    move/from16 v8, p10

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4061
    move/from16 v7, p11

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4062
    move-object/from16 v6, p12

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4063
    if-eqz p13, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4064
    if-eqz p14, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4065
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4066
    .local v0, "_status":Z
    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4067
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-interface/range {v3 .. v17}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4073
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4067
    return v3

    .line 4069
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4070
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 4073
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4075
    nop

    .line 4076
    return v0

    .line 4073
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4075
    throw v0
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4173
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4174
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4175
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteRelayChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4175
    return v3

    .line 4177
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4178
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4181
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4183
    nop

    .line 4184
    return v2

    .line 4181
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4183
    throw v2
.end method

.method public sreDeleteStream(I)I
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4109
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4110
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4111
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteStream(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4111
    return v3

    .line 4113
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4117
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4119
    nop

    .line 4120
    return v2

    .line 4117
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4119
    throw v2
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 10
    .param p1, "sessionId"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4330
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4331
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4332
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4333
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4334
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4335
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->sreEnableSRTP(III[BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4335
    return v3

    .line 4337
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4341
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4343
    nop

    .line 4344
    return v2

    .line 4341
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4343
    throw v2
.end method

.method public sreGetMdmn(I)Z
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4004
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4009
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4010
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4011
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreGetMdmn(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4011
    return v3

    .line 4013
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 4017
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4019
    nop

    .line 4020
    return v2

    .line 4017
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4019
    throw v2
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3962
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3965
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3966
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3967
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3968
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->sreGetVersion()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3968
    return-object v3

    .line 3970
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3971
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3974
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3976
    nop

    .line 3977
    return-object v2

    .line 3974
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3976
    throw v2
.end method

.method public sreHoldRelayChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4237
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4238
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4239
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreHoldRelayChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4239
    return v3

    .line 4241
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4242
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4245
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    nop

    .line 4248
    return v2

    .line 4245
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    throw v2
.end method

.method public sreInitialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3944
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3947
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3948
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3949
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->sreInitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3950
    return-void

    .line 3952
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3955
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3957
    nop

    .line 3958
    return-void

    .line 3955
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3957
    throw v2
.end method

.method public sreResumeRelayChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4258
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4259
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4260
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreResumeRelayChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4260
    return v3

    .line 4262
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4266
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4268
    nop

    .line 4269
    return v2

    .line 4266
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4268
    throw v2
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 35
    .param p1, "sessionId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .param p31, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4444
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4447
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4448
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4449
    move-object/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4450
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4451
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 4452
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4453
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4454
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4455
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4456
    if-eqz p9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4457
    move/from16 v7, p10

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4458
    move/from16 v6, p11

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4459
    move/from16 v5, p12

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4460
    move/from16 v4, p13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4461
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4462
    move/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4463
    move/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4464
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4465
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4466
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4467
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4468
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4469
    move/from16 v15, p22

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4470
    move-object/from16 v15, p23

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4471
    move-object/from16 v15, p24

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4472
    move-object/from16 v15, p25

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4473
    move-object/from16 v15, p26

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4474
    move-object/from16 v15, p27

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4475
    move-object/from16 v15, p28

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4476
    move-object/from16 v15, p29

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4477
    move-object/from16 v15, p30

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4478
    move/from16 v15, p31

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4479
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4480
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4481
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    move-object/from16 v32, p29

    move-object/from16 v33, p30

    move/from16 v34, p31

    invoke-interface/range {v3 .. v34}, Lcom/sec/sve/ISecVideoEngineService;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4487
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4481
    return v3

    .line 4483
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4484
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 4487
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4489
    nop

    .line 4490
    return v0

    .line 4487
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4489
    throw v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4296
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4299
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4300
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4301
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4302
    move/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4303
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4304
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4305
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4306
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4307
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4308
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4309
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4310
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4310
    return v3

    .line 4312
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4313
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 4316
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    nop

    .line 4319
    return v0

    .line 4316
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move-object/from16 v13, p2

    :goto_1
    move/from16 v14, p3

    :goto_2
    move-object/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    throw v0
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "type"    # I
    .param p4, "rxtype"    # I
    .param p5, "bitrate"    # I
    .param p6, "inband"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4495
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4498
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4499
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4500
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 4501
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4502
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4503
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4504
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4505
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4506
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4507
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->sreSetDtmfCodecInfo(IIIIII)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4513
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4507
    return v3

    .line 4509
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4510
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v3

    .line 4513
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4515
    nop

    .line 4516
    return v0

    .line 4513
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4515
    throw v0
.end method

.method public sreSetMdmn(IZ)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "isMdmn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3987
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3989
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3990
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetMdmn(IZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3990
    return v3

    .line 3992
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3996
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3998
    nop

    .line 3999
    return v2

    .line 3996
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3998
    throw v2
.end method

.method public sreSetNetId(IJ)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "netId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4030
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4031
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4032
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4033
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreSetNetId(IJ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4033
    return v3

    .line 4035
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4036
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4039
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    nop

    .line 4042
    return v2

    .line 4039
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    throw v2
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 10
    .param p1, "sessionId"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .param p4, "rtpTimer"    # I
    .param p5, "rtcpTimer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4355
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4356
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4357
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4358
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4359
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4360
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpOnCall(IIIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4360
    return v3

    .line 4362
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4366
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4368
    nop

    .line 4369
    return v2

    .line 4366
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4368
    throw v2
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4401
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4402
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4403
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4404
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpTimeout(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4404
    return v3

    .line 4406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4410
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4412
    nop

    .line 4413
    return v2

    .line 4410
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4412
    throw v2
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4418
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4421
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4422
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4423
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 4424
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4425
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4426
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4427
    move-object/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4428
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4429
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4430
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpXr(IIIII[I)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4436
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4430
    return v3

    .line 4432
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4433
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v3

    .line 4436
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4438
    nop

    .line 4439
    return v0

    .line 4436
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move-object/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4438
    throw v0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4379
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4380
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4381
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4382
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtpTimeout(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4382
    return v3

    .line 4384
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4388
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4390
    nop

    .line 4391
    return v2

    .line 4388
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4390
    throw v2
.end method

.method public sreStartRecording(III)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "streamId"    # I
    .param p3, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4527
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4528
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4529
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4530
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRecording(III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4530
    return v3

    .line 4532
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4536
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4538
    nop

    .line 4539
    return v2

    .line 4536
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4538
    throw v2
.end method

.method public sreStartRelayChannel(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4194
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4195
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4196
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4197
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRelayChannel(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4197
    return v3

    .line 4199
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4203
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4205
    nop

    .line 4206
    return v2

    .line 4203
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4205
    throw v2
.end method

.method public sreStartStream(III)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4087
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4088
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4089
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4090
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartStream(III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4090
    return v3

    .line 4092
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4096
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4098
    nop

    .line 4099
    return v2

    .line 4096
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4098
    throw v2
.end method

.method public sreStopRecording(II)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4549
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4550
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4551
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4552
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRecording(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4552
    return v3

    .line 4554
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4558
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4560
    nop

    .line 4561
    return v2

    .line 4558
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4560
    throw v2
.end method

.method public sreStopRelayChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4211
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4216
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4217
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4218
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRelayChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4218
    return v3

    .line 4220
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4224
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4226
    nop

    .line 4227
    return v2

    .line 4224
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4226
    throw v2
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "stream"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4280
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4281
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4282
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateRelayChannel(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4282
    return v3

    .line 4284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4288
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4290
    nop

    .line 4291
    return v2

    .line 4288
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4290
    throw v2
.end method

.method public sreUpdateStream(I)I
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4130
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4131
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4132
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateStream(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4132
    return v3

    .line 4134
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4135
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4138
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4140
    nop

    .line 4141
    return v2

    .line 4138
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4140
    throw v2
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 16
    .param p1, "mno"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "pdn"    # Ljava/lang/String;
    .param p9, "xqEnabled"    # Z
    .param p10, "ttyChannel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3590
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3593
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3594
    move/from16 v14, p1

    :try_start_1
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3595
    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3596
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3597
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3598
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3599
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3600
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 3601
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3602
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p9, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3603
    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3604
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3605
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3606
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-interface/range {v3 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3612
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3606
    return v3

    .line 3608
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3609
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    .line 3612
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3614
    nop

    .line 3615
    return v0

    .line 3612
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v14, p1

    :goto_2
    move-object/from16 v15, p2

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3614
    throw v0
.end method

.method public steDeleteChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3719
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3720
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3721
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->steDeleteChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3721
    return v3

    .line 3723
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3727
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3729
    nop

    .line 3730
    return v2

    .line 3727
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3729
    throw v2
.end method

.method public steEnableSRTP(III[BI)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3766
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3767
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3768
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3769
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->steEnableSRTP(III[BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    return v3

    .line 3771
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3772
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3775
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3777
    nop

    .line 3778
    return v2

    .line 3775
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3777
    throw v2
.end method

.method public steInitialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3525
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3526
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3527
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->steInitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3528
    return-void

    .line 3530
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3533
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    nop

    .line 3536
    return-void

    .line 3533
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    throw v2
.end method

.method public steModifyChannel(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3697
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3698
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3699
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3700
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steModifyChannel(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3700
    return v3

    .line 3702
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3703
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3706
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3708
    nop

    .line 3709
    return v2

    .line 3706
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3708
    throw v2
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3738
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3740
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3742
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3743
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3744
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSendText(ILjava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3744
    return v3

    .line 3746
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3750
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    nop

    .line 3753
    return v2

    .line 3750
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    throw v2
.end method

.method public steSetCallOptions(IZ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "isRtcpOnCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3876
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3879
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3881
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3882
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3883
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3884
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetCallOptions(IZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3884
    return v3

    .line 3886
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3890
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3892
    nop

    .line 3893
    return v2

    .line 3890
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3892
    throw v2
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 34
    .param p1, "channel"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3540
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3543
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3544
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3545
    move-object/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3546
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3547
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3548
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3549
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3550
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 3551
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3552
    if-eqz p9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3553
    move/from16 v7, p10

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3554
    move/from16 v6, p11

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3555
    move/from16 v5, p12

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3556
    move/from16 v4, p13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3558
    move/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3559
    move/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3560
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3561
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3563
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3564
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3565
    move/from16 v15, p22

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3566
    move-object/from16 v15, p23

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3567
    move-object/from16 v15, p24

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3568
    move-object/from16 v15, p25

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3569
    move-object/from16 v15, p26

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3570
    move-object/from16 v15, p27

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3571
    move-object/from16 v15, p28

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3572
    move-object/from16 v15, p29

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3573
    move-object/from16 v15, p30

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3574
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3575
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3576
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    move-object/from16 v32, p29

    move-object/from16 v33, p30

    invoke-interface/range {v3 .. v33}, Lcom/sec/sve/ISecVideoEngineService;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3582
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3576
    return v3

    .line 3578
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3579
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 3582
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3584
    nop

    .line 3585
    return v0

    .line 3582
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3584
    throw v0
.end method

.method public steSetNetId(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3904
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3905
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3906
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetNetId(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3906
    return v3

    .line 3908
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3912
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3914
    nop

    .line 3915
    return v2

    .line 3912
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3914
    throw v2
.end method

.method public steSetRtcpOnCall(III)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3786
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3789
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3790
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3791
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3792
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpOnCall(III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3792
    return v3

    .line 3794
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3798
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3800
    nop

    .line 3801
    return v2

    .line 3798
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3800
    throw v2
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3833
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3834
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3835
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3836
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpTimeout(IJ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3836
    return v3

    .line 3838
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3839
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3842
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3844
    nop

    .line 3845
    return v2

    .line 3842
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3844
    throw v2
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 16
    .param p1, "channel"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3850
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3853
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 3854
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3855
    move/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 3856
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3857
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3858
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3859
    move-object/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3860
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3861
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3862
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpXr(IIIII[I)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3868
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3862
    return v3

    .line 3864
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3865
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v3

    .line 3868
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3870
    nop

    .line 3871
    return v0

    .line 3868
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move/from16 v14, p5

    :goto_4
    move-object/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3870
    throw v0
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "sec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3812
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3813
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3814
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtpTimeout(IJ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3814
    return v3

    .line 3816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3820
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    nop

    .line 3823
    return v2

    .line 3820
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    throw v2
.end method

.method public steSetSessionId(II)I
    .locals 5
    .param p1, "channelId"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3923
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3925
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3926
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3927
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3928
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetSessionId(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    return v3

    .line 3930
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3931
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3934
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3936
    nop

    .line 3937
    return v2

    .line 3934
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3936
    throw v2
.end method

.method public steStartChannel(IIZ)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .param p3, "enableIpv6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3626
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3627
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3628
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3629
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steStartChannel(IIZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3629
    return v3

    .line 3631
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3632
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3635
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3637
    nop

    .line 3638
    return v2

    .line 3635
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3637
    throw v2
.end method

.method public steStopChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3677
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3678
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->steStopChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3678
    return v3

    .line 3680
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3684
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3686
    nop

    .line 3687
    return v2

    .line 3684
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3686
    throw v2
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 16
    .param p1, "channel"    # I
    .param p2, "dir"    # I
    .param p3, "localIp"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "remoteIp"    # Ljava/lang/String;
    .param p6, "remotePort"    # I
    .param p7, "localRTCPPort"    # I
    .param p8, "remoteRTCPPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3643
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3646
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3647
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3648
    move/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3649
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3650
    move/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3651
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3652
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3653
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 3654
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3655
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3656
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3657
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3663
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3657
    return v3

    .line 3659
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3660
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 3663
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3665
    nop

    .line 3666
    return v0

    .line 3663
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move/from16 v13, p2

    :goto_1
    move-object/from16 v14, p3

    :goto_2
    move/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3665
    throw v0
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 22
    .param p1, "sessionId"    # I
    .param p2, "audioId"    # I
    .param p3, "audioSampleRate"    # I
    .param p4, "audioCodec"    # Ljava/lang/String;
    .param p5, "audioSource"    # I
    .param p6, "outputFormat"    # I
    .param p7, "maxFileSize"    # J
    .param p9, "maxDuration"    # I
    .param p10, "outputPath"    # Ljava/lang/String;
    .param p11, "audioEncodingBR"    # I
    .param p12, "audioChannels"    # I
    .param p13, "audioSamplingR"    # I
    .param p14, "audioEncoder"    # I
    .param p15, "durationInterval"    # I
    .param p16, "fileSizeInterval"    # J
    .param p18, "author"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4614
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4617
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4618
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4619
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 4620
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4621
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4622
    move/from16 v10, p5

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4623
    move/from16 v11, p6

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4624
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 4625
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4626
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4627
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4628
    move/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4629
    move/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4630
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4631
    move/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4632
    move-wide/from16 v14, p16

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 4633
    move-object/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4634
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4635
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4636
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move-wide/from16 v19, p16

    move-object/from16 v21, p18

    invoke-interface/range {v3 .. v21}, Lcom/sec/sve/ISecVideoEngineService;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4642
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4636
    return v3

    .line 4638
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4639
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 4642
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4644
    nop

    .line 4645
    return v0

    .line 4642
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4644
    throw v0
.end method

.method public sveCreateChannel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3029
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3030
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3031
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->sveCreateChannel()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3031
    return v3

    .line 3033
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3034
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3037
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3039
    nop

    .line 3040
    return v2

    .line 3037
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3039
    throw v2
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 5
    .param p1, "codecMaxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3504
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3505
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3506
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    return-object v3

    .line 3508
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3509
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3512
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3514
    nop

    .line 3515
    return-object v2

    .line 3512
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3514
    throw v2
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3383
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3384
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3384
    return-object v3

    .line 3386
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3388
    sget-object v3, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/sve/TimeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/sec/sve/TimeInfo;
    goto :goto_0

    .line 3391
    .end local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :cond_1
    const/4 v3, 0x0

    .line 3395
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3397
    nop

    .line 3398
    return-object v3

    .line 3395
    .end local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3397
    throw v2
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3478
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3479
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3480
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3480
    return-object v3

    .line 3482
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3484
    sget-object v3, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/sve/TimeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/sec/sve/TimeInfo;
    goto :goto_0

    .line 3487
    .end local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :cond_1
    const/4 v3, 0x0

    .line 3491
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3493
    nop

    .line 3494
    return-object v3

    .line 3491
    .end local v3    # "_result":Lcom/sec/sve/TimeInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3493
    throw v2
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "audioId"    # I
    .param p4, "audioSampleRate"    # I
    .param p5, "audioCodec"    # Ljava/lang/String;
    .param p6, "videoId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4588
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4591
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4592
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4593
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 4594
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4595
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4596
    move-object/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4597
    move/from16 v15, p6

    :try_start_6
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 4598
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 4599
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4600
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4606
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4600
    return v3

    .line 4602
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4603
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v3

    .line 4606
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4608
    nop

    .line 4609
    return v0

    .line 4606
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move/from16 v10, p1

    :goto_0
    move-object/from16 v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move/from16 v13, p4

    :goto_3
    move-object/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4608
    throw v0
.end method

.method public sveRecorderDelete(I)I
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4653
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4655
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4656
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4657
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderDelete(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4657
    return v3

    .line 4659
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4663
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4665
    nop

    .line 4666
    return v2

    .line 4663
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4665
    throw v2
.end method

.method public sveRecorderStart(I)I
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4676
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4677
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4678
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStart(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4678
    return v3

    .line 4680
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4684
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4686
    nop

    .line 4687
    return v2

    .line 4684
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4686
    throw v2
.end method

.method public sveRecorderStop(IZ)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "saveFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4697
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4698
    iget-object v3, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4699
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4700
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStop(IZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    return v3

    .line 4702
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4703
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4706
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4708
    nop

    .line 4709
    return v2

    .line 4706
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4708
    throw v2
.end method

.method public sveRestartEmoji(I)V
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3339
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3340
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3341
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRestartEmoji(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3342
    return-void

    .line 3344
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3347
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3349
    nop

    .line 3350
    return-void

    .line 3347
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3349
    throw v2
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 5
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3456
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3457
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3458
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3459
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3459
    return v3

    .line 3461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3465
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    nop

    .line 3468
    return v2

    .line 3465
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    throw v2
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 30
    .param p1, "channel"    # I
    .param p2, "as"    # I
    .param p3, "rs"    # I
    .param p4, "rr"    # I
    .param p5, "recvCodecPT"    # I
    .param p6, "sendCodecPT"    # I
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "dir"    # I
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "frameRate"    # I
    .param p12, "maxBitrate"    # I
    .param p13, "enableAVPF"    # Z
    .param p14, "supportAVPFType"    # I
    .param p15, "enableOrientation"    # Z
    .param p16, "CVOGranularity"    # I
    .param p17, "H264Profile"    # I
    .param p18, "H264Level"    # I
    .param p19, "H264ConstraintInfo"    # I
    .param p20, "H264PackMode"    # I
    .param p21, "sps"    # [B
    .param p22, "pps"    # [B
    .param p23, "vps"    # [B
    .param p24, "spsLen"    # I
    .param p25, "ppsLen"    # I
    .param p26, "vpsLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3117
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3120
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3121
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3122
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 3123
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3124
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3125
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3127
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3128
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3129
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3130
    move/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3132
    move/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3133
    if-eqz p13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3134
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    if-eqz p15, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3136
    move/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3137
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3139
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3140
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3141
    move-object/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3142
    move-object/from16 v15, p22

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3143
    move-object/from16 v15, p23

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3144
    move/from16 v15, p24

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3145
    move/from16 v15, p25

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    move/from16 v15, p26

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3147
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3148
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3149
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    move/from16 v29, p26

    invoke-interface/range {v3 .. v29}, Lcom/sec/sve/ISecVideoEngineService;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    return v3

    .line 3151
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3152
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 3155
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3157
    nop

    .line 3158
    return v0

    .line 3155
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3157
    throw v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 16
    .param p1, "channel"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3089
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3092
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3093
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3094
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3095
    move/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3096
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3097
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3098
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3099
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3101
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3102
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3103
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3109
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    return v3

    .line 3105
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3106
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 3109
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3111
    nop

    .line 3112
    return v0

    .line 3109
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move-object/from16 v13, p2

    :goto_1
    move/from16 v14, p3

    :goto_2
    move-object/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3111
    throw v0
.end method

.method public sveSetGcmSrtpParams(IIIICI[BI[BI)I
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "srtpProfile"    # I
    .param p3, "keyId"    # I
    .param p4, "keytype"    # I
    .param p5, "csId"    # C
    .param p6, "csbIdValue"    # I
    .param p7, "inkey"    # [B
    .param p8, "inkeyLength"    # I
    .param p9, "rand"    # [B
    .param p10, "randLengthValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3196
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3199
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3200
    move/from16 v14, p1

    :try_start_1
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3201
    move/from16 v15, p2

    :try_start_2
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3202
    move/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3203
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3205
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3206
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3207
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3208
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3209
    move/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3210
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3211
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3212
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-interface/range {v3 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetGcmSrtpParams(IIIICI[BI[BI)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3218
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3212
    return v3

    .line 3214
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3215
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    .line 3218
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3220
    nop

    .line 3221
    return v0

    .line 3218
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v14, p1

    :goto_0
    move/from16 v15, p2

    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3220
    throw v0
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "isLocal"    # Z
    .param p3, "isHeld"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3359
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3360
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3361
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3362
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3363
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveSetHeldInfo(IZZ)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3363
    return v3

    .line 3365
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3369
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3371
    nop

    .line 3372
    return v2

    .line 3369
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3371
    throw v2
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "timeOutOnBoth"    # Z
    .param p3, "rtpTimeout"    # I
    .param p4, "rtpKeepAlive"    # Z
    .param p5, "rtcpTimeout"    # I
    .param p6, "mtuSize"    # I
    .param p7, "mno"    # I
    .param p8, "keepAliveInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3226
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3229
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3230
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3232
    move/from16 v13, p3

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3233
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3234
    move/from16 v14, p5

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3235
    move/from16 v15, p6

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    move/from16 v11, p7

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3237
    move/from16 v10, p8

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3238
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3239
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3240
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->sveSetMediaConfig(IZIZIIII)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3246
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3240
    return v3

    .line 3242
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3243
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 3246
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    nop

    .line 3249
    return v0

    .line 3246
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_2
    move/from16 v13, p3

    :goto_3
    move/from16 v14, p5

    :goto_4
    move/from16 v15, p6

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    throw v0
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "ul_bler"    # I
    .param p3, "dl_bler"    # I
    .param p4, "grant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3431
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3432
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3433
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3434
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3435
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSetNetworkQoS(IIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3435
    return v3

    .line 3437
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3438
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3441
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3443
    nop

    .line 3444
    return v2

    .line 3441
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3443
    throw v2
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "offerSuite"    # Ljava/lang/String;
    .param p3, "aucTagKeyLocal"    # [B
    .param p4, "sendKeySize"    # I
    .param p5, "ucTagKeyLenLocal"    # I
    .param p6, "uiTimetoLiveLocal"    # I
    .param p7, "uiMKILocal"    # I
    .param p8, "answerSuite"    # Ljava/lang/String;
    .param p9, "aucTagKeyRemote"    # [B
    .param p10, "recvKeySize"    # I
    .param p11, "ucTagKeyLenRemote"    # I
    .param p12, "uiTimetoLiveRemote"    # I
    .param p13, "uiMKIRemote"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3163
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3166
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3167
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 3168
    move-object/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3169
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3170
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3171
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3172
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3173
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 3174
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3175
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3176
    move/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3177
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    move/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    move/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3181
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3182
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-interface/range {v3 .. v16}, Lcom/sec/sve/ISecVideoEngineService;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3188
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    return v3

    .line 3184
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3185
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 3188
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    nop

    .line 3191
    return v0

    .line 3188
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    throw v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3403
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3406
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3408
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3410
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3411
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveSetVideoPlayDelay(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3411
    return v3

    .line 3413
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3417
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    nop

    .line 3420
    return v2

    .line 3417
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    throw v2
.end method

.method public sveStartCamera(II)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3260
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3261
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3262
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartCamera(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3262
    return v3

    .line 3264
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3268
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3270
    nop

    .line 3271
    return v2

    .line 3268
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3270
    throw v2
.end method

.method public sveStartChannel(III)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3045
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3051
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3052
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3053
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3054
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveStartChannel(III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3054
    return v3

    .line 3056
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3060
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3062
    nop

    .line 3063
    return v2

    .line 3060
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3062
    throw v2
.end method

.method public sveStartEmoji(ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3301
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3302
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3303
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartEmoji(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3304
    return-void

    .line 3306
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3309
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3311
    nop

    .line 3312
    return-void

    .line 3309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3311
    throw v2
.end method

.method public sveStartRecording(II)I
    .locals 5
    .param p1, "channel"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4766
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4767
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4768
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartRecording(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4768
    return v3

    .line 4770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4774
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4776
    nop

    .line 4777
    return v2

    .line 4774
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4776
    throw v2
.end method

.method public sveStopCamera()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3280
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3281
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3282
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->sveStopCamera()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    return v3

    .line 3284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3288
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    nop

    .line 3291
    return v2

    .line 3288
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    throw v2
.end method

.method public sveStopChannel(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3068
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3071
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3074
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3075
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopChannel(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3075
    return v3

    .line 3077
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3081
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3083
    nop

    .line 3084
    return v2

    .line 3081
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3083
    throw v2
.end method

.method public sveStopEmoji(I)V
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3321
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3322
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopEmoji(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    return-void

    .line 3325
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3328
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3330
    nop

    .line 3331
    return-void

    .line 3328
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3330
    throw v2
.end method

.method public sveStopRecording(I)I
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4787
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4788
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4789
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopRecording(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4789
    return v3

    .line 4791
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 4795
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4797
    nop

    .line 4798
    return v2

    .line 4795
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4797
    throw v2
.end method

.method public switchCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2383
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2384
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2385
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/sve/ISecVideoEngineService;->switchCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2386
    return-void

    .line 2388
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2391
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2393
    nop

    .line 2394
    return-void

    .line 2391
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2393
    throw v2
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/sve/ICmcMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4908
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4910
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4911
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/sve/ICmcMediaEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4912
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4913
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4914
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4915
    return-void

    .line 4917
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4920
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4922
    nop

    .line 4923
    return-void

    .line 4920
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4922
    throw v2
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/sve/IImsMediaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4871
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/sve/IImsMediaEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4872
    iget-object v2, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4873
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4874
    invoke-static {}, Lcom/sec/sve/ISecVideoEngineService$Stub;->getDefaultImpl()Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4875
    return-void

    .line 4877
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4880
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4882
    nop

    .line 4883
    return-void

    .line 4880
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4882
    throw v2
.end method
