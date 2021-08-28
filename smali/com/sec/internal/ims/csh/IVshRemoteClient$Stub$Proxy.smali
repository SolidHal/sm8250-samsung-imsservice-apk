.class Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVshRemoteClient.java"

# interfaces
.implements Lcom/sec/internal/ims/csh/IVshRemoteClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sec/internal/ims/csh/IVshRemoteClient;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 175
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public closeVshSource(JLandroid/view/Surface;Z)I
    .locals 5
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "endShare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 251
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.internal.ims.csh.IVshRemoteClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {p3, v0, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v2, p0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 262
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 263
    invoke-static {}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/internal/ims/csh/IVshRemoteClient;->closeVshSource(JLandroid/view/Surface;Z)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    return v3

    .line 265
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 269
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    nop

    .line 272
    return v2

    .line 269
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    return-object v0
.end method

.method public openVshSource(JLandroid/view/Surface;IIII)I
    .locals 16
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I
    .param p7, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    move-object/from16 v9, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 204
    .local v10, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 207
    .local v11, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 208
    move-wide/from16 v12, p1

    :try_start_1
    invoke-virtual {v10, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_0

    .line 210
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v9, v10, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    :goto_0
    move/from16 v14, p4

    :try_start_2
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    move/from16 v15, p5

    :try_start_3
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    move/from16 v8, p6

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    move/from16 v7, p7

    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    move-object/from16 v6, p0

    iget-object v2, v6, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 221
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    invoke-static {}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/sec/internal/ims/csh/IVshRemoteClient;->openVshSource(JLandroid/view/Surface;IIII)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 222
    return v1

    .line 224
    :cond_1
    :try_start_4
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    .line 225
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 228
    .local v0, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 230
    nop

    .line 231
    return v0

    .line 228
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

    move-wide/from16 v12, p1

    :goto_1
    move/from16 v14, p4

    :goto_2
    move/from16 v15, p5

    :goto_3
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 230
    throw v0
.end method

.method public setOrientationListenerType(II)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.internal.ims.csh.IVshRemoteClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v2, p0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 292
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 293
    invoke-static {}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/internal/ims/csh/IVshRemoteClient;->setOrientationListenerType(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    return v3

    .line 295
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 299
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return v2

    .line 299
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v2
.end method
