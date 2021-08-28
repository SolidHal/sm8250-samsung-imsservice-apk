.class Lcom/sec/internal/ims/core/WfcEpdgManager$3;
.super Lcom/sec/epdg/EpdgManager$EpdgListener;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;->makeEpdgHandoverListener()Lcom/sec/epdg/EpdgManager$EpdgListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 299
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 302
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 303
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$902(Lcom/sec/internal/ims/core/WfcEpdgManager;Z)Z

    .line 306
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1000(Lcom/sec/internal/ims/core/WfcEpdgManager;I)V

    .line 307
    const/4 p2, 0x0

    .line 309
    :cond_0
    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 310
    .local v0, "notifiedAvailability":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1100(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-ne v1, v0, :cond_2

    .line 311
    return-void

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1100(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z

    move-result-object v1

    aput-boolean v0, v1, p1

    .line 314
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IEpdgListener;

    .line 319
    .local v2, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/IEpdgListener;->onEpdgAvailable(III)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_2
    goto :goto_3

    .line 323
    :catch_0
    move-exception v3

    .line 324
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 320
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 321
    .local v3, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, " DeadObjectException remove dead listener."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_2

    .line 326
    .end local v2    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_3
    goto :goto_1

    .line 327
    :cond_3
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 353
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/ims/IEpdgListener;->onEpdgDeregister(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_1
    goto :goto_2

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 354
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 355
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 360
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 336
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/ims/IEpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_1
    goto :goto_2

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 337
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 338
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 343
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 370
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/ims/IEpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    goto :goto_2

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 371
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 372
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 377
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 378
    :cond_0
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 387
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    goto :goto_2

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 388
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 389
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 394
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 404
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgRegister(IZ)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    goto :goto_2

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 405
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 406
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 411
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 435
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 438
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/ims/IEpdgListener;->onEpdgReleaseCall(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    goto :goto_2

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 439
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 440
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 445
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 418
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/IEpdgListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    .line 421
    .local v1, "listener":Lcom/sec/ims/IEpdgListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgShowPopup(II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    goto :goto_2

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 422
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 423
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, " DeadObjectException remove dead listener."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 428
    .end local v1    # "listener":Lcom/sec/ims/IEpdgListener;
    :goto_2
    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method
