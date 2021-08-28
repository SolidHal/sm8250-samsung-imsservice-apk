.class public Lcom/sec/internal/helper/picturetool/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_FRAMES:I = 0x32

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->loopCount:I

    .line 78
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    .line 81
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    .line 83
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    .line 84
    iput-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    .line 85
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    return-void
.end method

.method private allcateBitmapData(I)V
    .locals 2
    .param p1, "npix"    # I

    .line 326
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 327
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    const/16 v1, 0x1000

    if-nez v0, :cond_2

    .line 330
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    if-nez v0, :cond_3

    .line 333
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    if-nez v0, :cond_4

    .line 336
    const/16 v0, 0x1001

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    .line 338
    :cond_4
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .line 754
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 755
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 756
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object v2, v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 757
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 760
    return-void
.end method

.method protected decodeBitmapData()V
    .locals 28

    .line 343
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 344
    .local v1, "nullCode":I
    iget v2, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    iget v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    mul-int/2addr v2, v3

    .line 348
    .local v2, "npix":I
    invoke-direct {v0, v2}, Lcom/sec/internal/helper/picturetool/GifDecoder;->allcateBitmapData(I)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v3

    .line 352
    .local v3, "data_size":I
    const/4 v4, 0x1

    shl-int v5, v4, v3

    .line 353
    .local v5, "clear":I
    add-int/lit8 v6, v5, 0x1

    .line 354
    .local v6, "end_of_information":I
    add-int/lit8 v7, v5, 0x2

    .line 355
    .local v7, "available":I
    move v8, v1

    .line 356
    .local v8, "old_code":I
    add-int/lit8 v9, v3, 0x1

    .line 357
    .local v9, "code_size":I
    shl-int v10, v4, v9

    sub-int/2addr v10, v4

    .line 358
    .local v10, "code_mask":I
    const/4 v11, 0x0

    .local v11, "code":I
    :goto_0
    const/4 v12, 0x0

    if-ge v11, v5, :cond_0

    .line 359
    iget-object v13, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    aput-short v12, v13, v11

    .line 360
    iget-object v12, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    int-to-byte v13, v11

    aput-byte v13, v12, v11

    .line 358
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 363
    :cond_0
    move v13, v12

    .local v13, "bi":I
    move v14, v12

    .local v14, "pi":I
    move v15, v12

    .local v15, "top":I
    move/from16 v16, v12

    .local v16, "first":I
    move/from16 v17, v12

    .local v17, "count":I
    move/from16 v18, v12

    .local v18, "bits":I
    move/from16 v19, v12

    .line 364
    .local v19, "datum":I
    const/16 v20, 0x0

    move/from16 v4, v18

    move/from16 v27, v20

    move/from16 v20, v11

    move/from16 v11, v27

    .end local v16    # "first":I
    .end local v18    # "bits":I
    .local v4, "bits":I
    .local v11, "i":I
    .local v12, "first":I
    .local v20, "code":I
    :goto_1
    if-ge v11, v2, :cond_d

    .line 365
    if-nez v15, :cond_c

    .line 366
    if-ge v4, v9, :cond_3

    .line 368
    if-nez v17, :cond_2

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    move-result v17

    .line 371
    if-gtz v17, :cond_1

    .line 372
    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v23, v3

    goto/16 :goto_5

    .line 374
    :cond_1
    const/4 v13, 0x0

    .line 376
    :cond_2
    move/from16 v21, v2

    .end local v2    # "npix":I
    .local v21, "npix":I
    iget-object v2, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    aget-byte v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    add-int v19, v19, v2

    .line 377
    add-int/lit8 v4, v4, 0x8

    .line 378
    const/4 v2, 0x1

    add-int/2addr v13, v2

    .line 379
    add-int/lit8 v17, v17, -0x1

    .line 380
    move/from16 v2, v21

    goto :goto_1

    .line 383
    .end local v21    # "npix":I
    .restart local v2    # "npix":I
    :cond_3
    move/from16 v21, v2

    .end local v2    # "npix":I
    .restart local v21    # "npix":I
    and-int v2, v19, v10

    .line 384
    .end local v20    # "code":I
    .local v2, "code":I
    shr-int v19, v19, v9

    .line 385
    sub-int/2addr v4, v9

    .line 387
    if-gt v2, v7, :cond_b

    if-ne v2, v6, :cond_4

    .line 388
    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v25, v4

    goto/16 :goto_3

    .line 390
    :cond_4
    if-ne v2, v5, :cond_5

    .line 392
    add-int/lit8 v9, v3, 0x1

    .line 393
    const/16 v18, 0x1

    shl-int v20, v18, v9

    add-int/lit8 v10, v20, -0x1

    .line 394
    add-int/lit8 v7, v5, 0x2

    .line 395
    move v8, v1

    .line 396
    move/from16 v20, v2

    move/from16 v2, v21

    goto :goto_1

    .line 398
    :cond_5
    const/16 v18, 0x1

    if-ne v8, v1, :cond_6

    .line 399
    move/from16 v22, v1

    .end local v1    # "nullCode":I
    .local v22, "nullCode":I
    iget-object v1, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v20, v15, 0x1

    move/from16 v23, v3

    .end local v3    # "data_size":I
    .end local v15    # "top":I
    .local v20, "top":I
    .local v23, "data_size":I
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    aget-byte v3, v3, v2

    aput-byte v3, v1, v15

    .line 400
    move v8, v2

    .line 401
    move v12, v2

    .line 402
    move/from16 v15, v20

    move/from16 v1, v22

    move/from16 v3, v23

    move/from16 v20, v2

    move/from16 v2, v21

    goto :goto_1

    .line 404
    .end local v20    # "top":I
    .end local v22    # "nullCode":I
    .end local v23    # "data_size":I
    .restart local v1    # "nullCode":I
    .restart local v3    # "data_size":I
    .restart local v15    # "top":I
    :cond_6
    move/from16 v22, v1

    move/from16 v23, v3

    .end local v1    # "nullCode":I
    .end local v3    # "data_size":I
    .restart local v22    # "nullCode":I
    .restart local v23    # "data_size":I
    move v1, v2

    .line 405
    .local v1, "in_code":I
    if-ne v2, v7, :cond_7

    .line 406
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v20, v15, 0x1

    move/from16 v24, v2

    .end local v2    # "code":I
    .end local v15    # "top":I
    .restart local v20    # "top":I
    .local v24, "code":I
    int-to-byte v2, v12

    aput-byte v2, v3, v15

    .line 407
    move v2, v8

    move/from16 v15, v20

    .end local v24    # "code":I
    .restart local v2    # "code":I
    goto :goto_2

    .line 405
    .end local v20    # "top":I
    .restart local v15    # "top":I
    :cond_7
    move/from16 v24, v2

    .line 409
    :goto_2
    if-le v2, v5, :cond_8

    .line 410
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v20, v15, 0x1

    move/from16 v25, v4

    .end local v4    # "bits":I
    .end local v15    # "top":I
    .restart local v20    # "top":I
    .local v25, "bits":I
    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    aget-byte v4, v4, v2

    aput-byte v4, v3, v15

    .line 411
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    aget-short v2, v3, v2

    move/from16 v15, v20

    move/from16 v4, v25

    goto :goto_2

    .line 413
    .end local v20    # "top":I
    .end local v25    # "bits":I
    .restart local v4    # "bits":I
    .restart local v15    # "top":I
    :cond_8
    move/from16 v25, v4

    .end local v4    # "bits":I
    .restart local v25    # "bits":I
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    aget-byte v4, v3, v2

    and-int/lit16 v12, v4, 0xff

    .line 415
    const/16 v4, 0x1000

    if-lt v7, v4, :cond_9

    .line 416
    move/from16 v20, v2

    move/from16 v4, v25

    goto :goto_5

    .line 418
    :cond_9
    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v24, v15, 0x1

    move/from16 v26, v2

    .end local v2    # "code":I
    .end local v15    # "top":I
    .local v24, "top":I
    .local v26, "code":I
    int-to-byte v2, v12

    aput-byte v2, v4, v15

    .line 419
    iget-object v2, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    int-to-short v4, v8

    aput-short v4, v2, v7

    .line 420
    int-to-byte v2, v12

    aput-byte v2, v3, v7

    .line 421
    add-int/lit8 v7, v7, 0x1

    .line 422
    and-int v2, v7, v10

    if-nez v2, :cond_a

    const/16 v2, 0x1000

    if-ge v7, v2, :cond_a

    .line 424
    add-int/lit8 v9, v9, 0x1

    .line 425
    add-int/2addr v10, v7

    .line 427
    :cond_a
    move v2, v1

    move v8, v2

    move/from16 v15, v24

    move/from16 v4, v25

    move/from16 v20, v26

    .end local v8    # "old_code":I
    .local v2, "old_code":I
    goto :goto_4

    .line 387
    .end local v22    # "nullCode":I
    .end local v23    # "data_size":I
    .end local v24    # "top":I
    .end local v25    # "bits":I
    .end local v26    # "code":I
    .local v1, "nullCode":I
    .local v2, "code":I
    .restart local v3    # "data_size":I
    .restart local v4    # "bits":I
    .restart local v8    # "old_code":I
    .restart local v15    # "top":I
    :cond_b
    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v25, v4

    .line 434
    .end local v1    # "nullCode":I
    .end local v2    # "code":I
    .end local v3    # "data_size":I
    .end local v4    # "bits":I
    .restart local v22    # "nullCode":I
    .restart local v23    # "data_size":I
    .local v24, "code":I
    .restart local v25    # "bits":I
    :goto_3
    move/from16 v20, v24

    move/from16 v4, v25

    goto :goto_5

    .line 365
    .end local v21    # "npix":I
    .end local v22    # "nullCode":I
    .end local v23    # "data_size":I
    .end local v24    # "code":I
    .end local v25    # "bits":I
    .restart local v1    # "nullCode":I
    .local v2, "npix":I
    .restart local v3    # "data_size":I
    .restart local v4    # "bits":I
    .local v20, "code":I
    :cond_c
    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v23, v3

    const/16 v18, 0x1

    .line 430
    .end local v1    # "nullCode":I
    .end local v2    # "npix":I
    .end local v3    # "data_size":I
    .restart local v21    # "npix":I
    .restart local v22    # "nullCode":I
    .restart local v23    # "data_size":I
    :goto_4
    add-int/lit8 v15, v15, -0x1

    .line 431
    iget-object v1, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    add-int/lit8 v2, v14, 0x1

    .end local v14    # "pi":I
    .local v2, "pi":I
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    aget-byte v3, v3, v15

    aput-byte v3, v1, v14

    .line 432
    add-int/lit8 v11, v11, 0x1

    move v14, v2

    move/from16 v2, v21

    move/from16 v1, v22

    move/from16 v3, v23

    goto/16 :goto_1

    .line 364
    .end local v21    # "npix":I
    .end local v22    # "nullCode":I
    .end local v23    # "data_size":I
    .restart local v1    # "nullCode":I
    .local v2, "npix":I
    .restart local v3    # "data_size":I
    .restart local v14    # "pi":I
    :cond_d
    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v23, v3

    .line 434
    .end local v1    # "nullCode":I
    .end local v2    # "npix":I
    .end local v3    # "data_size":I
    .restart local v21    # "npix":I
    .restart local v22    # "nullCode":I
    .restart local v23    # "data_size":I
    :goto_5
    move v1, v14

    .end local v11    # "i":I
    .local v1, "i":I
    :goto_6
    move/from16 v2, v21

    .end local v21    # "npix":I
    .restart local v2    # "npix":I
    if-ge v1, v2, :cond_e

    .line 435
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    const/4 v11, 0x0

    aput-byte v11, v3, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    move/from16 v21, v2

    goto :goto_6

    .line 437
    :cond_e
    return-void
.end method

.method protected err()Z
    .locals 1

    .line 443
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .line 248
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 249
    return-object v1

    .line 252
    :cond_0
    rem-int/2addr p1, v0

    .line 254
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object v0

    .line 256
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getFrames()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    .line 451
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    .line 452
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gct:[I

    .line 454
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lct:[I

    .line 455
    return-void
.end method

.method protected read()I
    .locals 3

    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 466
    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public read(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 295
    const-string v0, "Could not close stream"

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->init()V

    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 301
    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readHeader()V

    .line 303
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readContents()V

    .line 305
    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    if-gez v2, :cond_0

    .line 306
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    nop

    .line 314
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :cond_1
    :goto_0
    goto :goto_1

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 312
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 309
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x2

    :try_start_2
    iput v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_1

    .line 314
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 321
    :goto_1
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    return v0

    .line 313
    :goto_2
    if-eqz v1, :cond_2

    .line 314
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 316
    :catch_2
    move-exception v3

    .line 317
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 318
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    nop

    .line 319
    :goto_4
    throw v2
.end method

.method protected readBitmap()V
    .locals 8

    .line 635
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ix:I

    .line 636
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iy:I

    .line 637
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    .line 638
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    .line 639
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    .line 640
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctFlag:Z

    .line 641
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v1, v0, 0x7

    add-int/2addr v1, v3

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctSize:I

    .line 645
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->interlace:Z

    .line 646
    iget-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctFlag:Z

    if-eqz v1, :cond_2

    .line 647
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctSize:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lct:[I

    .line 648
    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    goto :goto_2

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gct:[I

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    .line 651
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgIndex:I

    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    if-ne v1, v4, :cond_3

    .line 652
    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgColor:I

    .line 655
    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 656
    .local v1, "save":I
    iget-object v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    if-nez v4, :cond_4

    .line 657
    iput v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    .line 658
    return-void

    .line 660
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    return-void

    .line 663
    :cond_5
    iget-boolean v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    if-eqz v4, :cond_6

    .line 664
    iget-object v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    iget v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    aget v1, v4, v5

    .line 665
    aput v2, v4, v5

    .line 667
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->decodeBitmapData()V

    .line 668
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    .line 669
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 670
    return-void

    .line 672
    :cond_7
    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    .line 674
    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 675
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->setPixels()V

    .line 676
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 678
    iget-boolean v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    if-eqz v2, :cond_8

    .line 679
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 681
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->resetFrame()V

    .line 682
    return-void
.end method

.method protected readBlock()I
    .locals 4

    .line 476
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "n":I
    if-lez v0, :cond_2

    .line 481
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .local v0, "count":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 484
    goto :goto_1

    .line 486
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 490
    .end local v0    # "count":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_2

    .line 492
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    .line 495
    :cond_2
    return v1
.end method

.method protected readColorTable(I)[I
    .locals 12
    .param p1, "ncolors"    # I

    .line 505
    mul-int/lit8 v0, p1, 0x3

    .line 506
    .local v0, "nbytes":I
    const/4 v1, 0x0

    .line 507
    .local v1, "tab":[I
    new-array v2, v0, [B

    .line 508
    .local v2, "c":[B
    const/4 v3, 0x0

    .line 510
    .local v3, "n":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 513
    goto :goto_0

    .line 511
    :catch_0
    move-exception v4

    .line 512
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-ge v3, v0, :cond_0

    .line 515
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    goto :goto_2

    .line 517
    :cond_0
    const/16 v4, 0x100

    new-array v1, v4, [I

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, "i":I
    const/4 v5, 0x0

    .line 520
    .local v5, "j":I
    :goto_1
    if-ge v4, p1, :cond_1

    .line 521
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 522
    .local v5, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 523
    .local v6, "g":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .local v8, "j":I
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 524
    .local v7, "b":I
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    const/high16 v10, -0x1000000

    shl-int/lit8 v11, v5, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v7

    aput v10, v1, v4

    .line 525
    .end local v5    # "r":I
    .end local v6    # "g":I
    .end local v7    # "b":I
    move v5, v8

    move v4, v9

    goto :goto_1

    .line 527
    .end local v8    # "j":I
    .end local v9    # "i":I
    :cond_1
    :goto_2
    return-object v1
.end method

.method protected readContents()V
    .locals 6

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_a

    .line 537
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v1

    .line 538
    .local v1, "code":I
    sget-object v2, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v2, 0x21

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    .line 584
    iput v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    goto :goto_2

    .line 580
    :cond_0
    const/4 v0, 0x1

    .line 581
    goto :goto_2

    .line 541
    :cond_1
    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBitmap()V

    goto :goto_2

    .line 544
    :cond_2
    return-void

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v1

    .line 549
    if-eq v1, v3, :cond_9

    const/16 v2, 0xf9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_7

    const/16 v2, 0xff

    if-eq v1, v2, :cond_4

    .line 576
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    .line 578
    goto :goto_2

    .line 554
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    .line 556
    const/16 v2, 0xb

    new-array v3, v2, [C

    .line 557
    .local v3, "appc":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 558
    iget-object v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 557
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 561
    .end local v4    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 563
    .local v2, "app":Ljava/lang/String;
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 564
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readNetscapeExt()V

    goto :goto_2

    .line 566
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    .line 568
    goto :goto_2

    .line 570
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "appc":[C
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    .line 571
    goto :goto_2

    .line 551
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readGraphicControlExt()V

    .line 552
    goto :goto_2

    .line 573
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    .line 574
    nop

    .line 586
    .end local v1    # "code":I
    :goto_2
    goto/16 :goto_0

    .line 587
    :cond_a
    return-void
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .line 593
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    .line 594
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    .line 595
    .local v0, "packed":I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    .line 596
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 597
    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    .line 599
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    .line 600
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    .line 601
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    .line 602
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    .line 603
    return-void
.end method

.method protected readHeader()V
    .locals 5

    .line 610
    const/4 v0, 0x6

    new-array v1, v0, [C

    .line 612
    .local v1, "idc":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 617
    .local v0, "ids":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readHeader: start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    .line 620
    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readLSD()V

    .line 623
    iget-boolean v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_2

    .line 624
    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gct:[I

    .line 625
    if-eqz v2, :cond_2

    .line 626
    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgColor:I

    .line 629
    :cond_2
    return-void
.end method

.method protected readLSD()V
    .locals 4

    .line 689
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    .line 690
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    .line 694
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctFlag:Z

    .line 697
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctSize:I

    .line 698
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgIndex:I

    .line 699
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelAspect:I

    .line 700
    sget-object v1, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pixelAspect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelAspect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gctSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gctFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method protected readNetscapeExt()V
    .locals 3

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    .line 710
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 712
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 713
    .local v1, "b1":I
    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 714
    .local v0, "b2":I
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->loopCount:I

    .line 716
    .end local v0    # "b2":I
    .end local v1    # "b1":I
    :cond_1
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .line 724
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 1

    .line 731
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    .line 732
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ix:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrx:I

    .line 733
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iy:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lry:I

    .line 734
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrw:I

    .line 735
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrh:I

    .line 736
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 737
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBgColor:I

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    .line 739
    iput-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    .line 740
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lct:[I

    .line 742
    return-void
.end method

.method protected setPixels()V
    .locals 14

    .line 159
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 161
    .local v0, "dest":[I
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-lez v1, :cond_4

    .line 162
    if-ne v1, v9, :cond_1

    .line 164
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    sub-int/2addr v1, v10

    .line 165
    .local v1, "n":I
    if-lez v1, :cond_0

    .line 166
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/picturetool/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 168
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 171
    .end local v1    # "n":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 172
    const/4 v3, 0x0

    iget v7, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 174
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    if-ne v1, v10, :cond_4

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "c":I
    iget-boolean v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    if-nez v2, :cond_2

    .line 178
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBgColor:I

    .line 180
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrh:I

    if-ge v2, v3, :cond_4

    .line 181
    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lry:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrx:I

    add-int/2addr v3, v4

    .line 182
    .local v3, "n1":I
    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrw:I

    add-int/2addr v4, v3

    .line 183
    .local v4, "n2":I
    move v5, v3

    .local v5, "k":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 184
    aput v1, v0, v5

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 180
    .end local v3    # "n1":I
    .end local v4    # "n2":I
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    .end local v1    # "c":I
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x1

    .line 192
    .local v1, "pass":I
    const/16 v2, 0x8

    .line 193
    .local v2, "inc":I
    const/4 v3, 0x0

    .line 194
    .local v3, "iline":I
    const/4 v4, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v1    # "pass":I
    .end local v2    # "inc":I
    .end local v3    # "iline":I
    .local v4, "i":I
    .local v11, "pass":I
    .local v12, "inc":I
    .local v13, "iline":I
    :goto_3
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    if-ge v4, v1, :cond_d

    .line 195
    move v2, v4

    .line 196
    .local v2, "line":I
    iget-boolean v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->interlace:Z

    if-eqz v3, :cond_9

    .line 197
    if-lt v13, v1, :cond_8

    .line 198
    add-int/lit8 v11, v11, 0x1

    .line 199
    if-eq v11, v10, :cond_7

    if-eq v11, v9, :cond_6

    const/4 v1, 0x4

    if-eq v11, v1, :cond_5

    goto :goto_4

    .line 208
    :cond_5
    const/4 v13, 0x1

    .line 209
    const/4 v12, 0x2

    .line 210
    goto :goto_4

    .line 204
    :cond_6
    const/4 v13, 0x2

    .line 205
    const/4 v12, 0x4

    .line 206
    goto :goto_4

    .line 201
    :cond_7
    const/4 v13, 0x4

    .line 215
    :cond_8
    :goto_4
    move v2, v13

    .line 216
    add-int/2addr v13, v12

    .line 218
    :cond_9
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iy:I

    add-int/2addr v2, v1

    .line 219
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    if-ge v2, v1, :cond_c

    .line 220
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    mul-int v3, v2, v1

    .line 221
    .local v3, "k":I
    iget v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ix:I

    add-int/2addr v5, v3

    .line 222
    .local v5, "dx":I
    iget v6, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    add-int/2addr v6, v5

    .line 223
    .local v6, "dlim":I
    add-int v7, v3, v1

    if-ge v7, v6, :cond_a

    .line 224
    add-int v6, v3, v1

    .line 226
    :cond_a
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    mul-int/2addr v1, v4

    .line 227
    .local v1, "sx":I
    :goto_5
    if-ge v5, v6, :cond_c

    .line 229
    iget-object v7, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "sx":I
    .local v8, "sx":I
    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    .line 230
    .local v1, "index":I
    iget-object v7, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    aget v7, v7, v1

    .line 231
    .local v7, "c":I
    if-eqz v7, :cond_b

    .line 232
    aput v7, v0, v5

    .line 234
    :cond_b
    nop

    .end local v1    # "index":I
    .end local v7    # "c":I
    add-int/lit8 v5, v5, 0x1

    .line 235
    move v1, v8

    goto :goto_5

    .line 194
    .end local v2    # "line":I
    .end local v3    # "k":I
    .end local v5    # "dx":I
    .end local v6    # "dlim":I
    .end local v8    # "sx":I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 238
    .end local v4    # "i":I
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 238
    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 240
    return-void
.end method

.method protected skip()V
    .locals 1

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    .line 750
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    :cond_1
    return-void
.end method
