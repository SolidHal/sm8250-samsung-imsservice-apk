.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;
.super Landroid/os/Handler;
.source "SsacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSACController"
.end annotation


# static fields
.field private static final EVT_SSAC_BARRING:I = 0x1

.field private static final MAX_BARRING_FACTOR:I = 0x64

.field public static final STATE_BARRED:Z = true

.field public static final STATE_NOT_BARRED:Z = false


# instance fields
.field mBarredState:[Z

.field mCallType:I

.field mCallTypeName:Ljava/lang/String;

.field mFactor:[I

.field mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

.field mTime:[I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V
    .locals 3
    .param p1, "calltype"    # I
    .param p2, "manager"    # Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;
    .param p3, "phoneCount"    # I

    .line 144
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 145
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallType:I

    .line 146
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 147
    const-string v0, "Voice Call"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, "Video Call"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    .line 151
    :goto_0
    new-array v0, p3, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    .line 152
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    .line 153
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    .line 154
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 157
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 232
    .local v0, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->removeMessages(ILjava/lang/Object;)V

    .line 235
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 236
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 237
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 240
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_3

    .line 241
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v6, 0x64

    aput v6, v5, v0

    .line 242
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput v4, v5, v0

    .line 244
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Barring Timed out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "phoneId":I
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :goto_0
    return-void
.end method

.method public isAlwaysBarred(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallBarred(I)Z
    .locals 13
    .param p1, "phoneId"    # I

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 169
    .local v2, "rand1":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 170
    .local v4, "rand2":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: isCallBarred:rand1:["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "] rand2:["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SsacManager"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget v0, v0, p1

    int-to-double v10, v0

    cmpg-double v0, v8, v10

    const/4 v8, 0x0

    if-gez v0, :cond_1

    .line 173
    return v8

    .line 175
    :cond_1
    const-wide v9, 0x3fe6666666666666L    # 0.7

    const-wide v11, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v11, v4

    add-double/2addr v11, v9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget v0, v0, p1

    int-to-double v9, v0

    mul-double/2addr v11, v9

    double-to-int v0, v11

    .line 176
    .local v0, "barringTime":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: Barred for "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-nez v0, :cond_2

    .line 179
    return v8

    .line 181
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v6, p1

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    int-to-long v7, v0

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    return v1
.end method

.method public updateSSACInfo(III)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "factor"    # I
    .param p3, "time"    # I

    .line 188
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 189
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 190
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 193
    :cond_0
    const-string v2, "]"

    const-string v3, "], t["

    const-string v4, "SsacManager"

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p2, v5, :cond_4

    .line 194
    if-ltz p2, :cond_1

    .line 195
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aput p2, v5, p1

    .line 196
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput p3, v5, p1

    goto/16 :goto_0

    .line 200
    :cond_1
    sget-object v8, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v8, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->hasMessages(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    if-ne p2, v8, :cond_3

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: Ignored updateSSACInfo : f["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    :cond_3
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aput v5, v8, p1

    .line 207
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput v6, v5, p1

    .line 209
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v6, v5, p1

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_4
    sget-object v8, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v8, :cond_5

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v8, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean v8, v8, p1

    if-eq v8, v7, :cond_7

    .line 214
    :cond_6
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aput v5, v8, p1

    .line 215
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput v6, v5, p1

    .line 217
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v6, v5, p1

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->removeMessages(ILjava/lang/Object;)V

    .line 221
    :cond_7
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " updateSSACInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] : f["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget v3, v3, p1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
