//
//  AView.m
//  TestLayer
//
//  Created by duanwenpu on 2022/7/7.
//

#import "AView.h"

@implementation AView

__int64 __fastcall CA::Transaction::commit(__int64 this)
{
  __int64 v1; // x23
  unsigned int *v2; // x8
  __int64 v4; // x28
  unsigned __int64 v5; // x0
  __int64 v6; // x0
  double v7; // d8
  double v8; // d0
  __int64 v9; // x21
  __int64 v10; // x19
  __int64 v11; // x20
  __int64 v12; // x21
  __int64 v13; // x0
  char i; // w21
  double *v15; // x2
  _QWORD *v16; // x8
  _QWORD *v17; // x10
  _QWORD *v18; // x9
  __int64 v19; // x27
  __int64 v20; // x0
  unsigned __int64 v21; // x8
  char **v22; // x8
  char *v23; // x10
  char *v24; // x9
  char **v25; // x22
  char **v26; // x0
  __int64 v27; // x0
  unsigned int v28; // w27
  CA::Transaction *v29; // x1
  _QWORD *v30; // x0
  _QWORD *v31; // x22
  __int64 v32; // x27
  void *v33; // x0
  _QWORD *v34; // x22
  _QWORD *v35; // x0
  _QWORD *v36; // x22
  __int64 malloc_zone; // x0
  __int64 v38; // x27
  char v39; // w19
  void *v40; // x0
  unsigned int v41; // w9
  unsigned int v42; // w9
  unsigned int v43; // w9
  CA::Transaction::Level *v44; // x24
  CA::Transaction::Level *v45; // x20
  __int64 v46; // x0
  unsigned __int64 v47; // x0
  double v48; // d9
  __int64 v49; // x0
  __int64 v50; // x20
  __int64 v51; // x21
  int v52; // w20
  _BOOL4 v53; // w22
  __int64 v54; // x23
  _BOOL4 v55; // [xsp+Ch] [xbp-B4h]
  __int64 v56; // [xsp+10h] [xbp-B0h]
  __int64 v57; // [xsp+18h] [xbp-A8h]
  __int64 v58; // [xsp+20h] [xbp-A0h]
  __int64 v59; // [xsp+28h] [xbp-98h]
  double v60; // [xsp+30h] [xbp-90h] BYREF
  __int64 v61; // [xsp+38h] [xbp-88h] BYREF
  char v62[12]; // [xsp+40h] [xbp-80h] BYREF
  __int16 v63; // [xsp+4Ch] [xbp-74h]
  int v64; // [xsp+4Eh] [xbp-72h]

  if ( *(_QWORD *)(this + 104) == this + 120 )
  {
    v1 = this;
    v2 = (unsigned int *)(this + 112);
    do
    {
      if ( __ldaxr(v2) )
      {
        __clrex();
        return this;
      }
    }
    while ( __stlxr(1u, v2) );
    v4 = *(_QWORD *)(this + 104);
    v5 = MEMORY[0x1800BF2D0]();
    v7 = CATimeWithHostTime(v5);
    if ( *(double *)(v4 + 160) == 0.0 )
    {
      v8 = *(double *)(v4 + 168);
      if ( v8 == 0.0 )
      {
        v8 = *(double *)(v4 + 136);
        if ( v8 == 0.0 )
          v8 = v7;
      }
      v6 = CA::Transaction::set_frame_begin_time(*(_QWORD *)(v1 + 104), v8);
    }
    v9 = *(_QWORD *)(v1 + 104);
    v55 = (*(_BYTE *)(v9 + 188) & 0x20) == 0;
    if ( (*(_BYTE *)(v9 + 188) & 0x20) == 0 )
    {
      v10 = CAHostTimeWithTime(v6, *(double *)(v4 + 168));
      v11 = CAHostTimeWithTime(v10, *(double *)(v4 + 160));
      v12 = *(unsigned int *)(v9 + 184);
      v13 = CAHostTimeWithTime(v11, *(double *)(v4 + 176));
      MEMORY[0x1800BF27C](835321861LL, v13, v12, v11, v10);
    }
    for ( i = 1; ; i = 0 )
    {
      *(_BYTE *)(v1 + 116) &= ~2u;
      CA::Transaction::run_commit_handlers(v1, 4LL);
      if ( *(_QWORD *)(v4 + 16) )
      {
        v16 = *(_QWORD **)(v4 + 16);
        if ( v16 )
        {
          v17 = 0LL;
          do
          {
            v18 = v16;
            v16 = (_QWORD *)*v16;
            *v18 = v17;
            v17 = v18;
          }
          while ( v16 );
        }
        else
        {
          v18 = 0LL;
        }
        *(_QWORD *)(v1 + 16) = v18;
        *(_QWORD *)(v4 + 16) = 0LL;
      }
      v19 = 0LL;
      v20 = *(_QWORD *)(v1 + 48);
      while ( 1 )
      {
        if ( v20 )
        {
          if ( v19 )
          {
            x_hash_table_foreach(v20, CA::move_root, v19);
            x_hash_table_remove_all(*(_QWORD *)(v1 + 48));
          }
          else
          {
            *(_QWORD *)(v1 + 48) = 0LL;
            v19 = v20;
          }
        }
        else if ( !v19 )
        {
          *(_QWORD *)(v1 + 48) = 0LL;
          goto LABEL_31;
        }
        x_hash_table_remove_if(v19, CA::release_root_if_unused, v1);
        v20 = *(_QWORD *)(v1 + 48);
        if ( !v20 )
          break;
        if ( !*(_QWORD *)(v20 + 24) )
        {
          *(_QWORD *)(v1 + 48) = v19;
          x_hash_table_free(v20);
          goto LABEL_31;
        }
      }
      *(_QWORD *)(v1 + 48) = v19;
LABEL_31:
      if ( *(_QWORD *)(v4 + 24) )
      {
        *(_QWORD *)(v1 + 24) = *(_QWORD *)(v4 + 24);
        *(_QWORD *)(v4 + 24) = 0LL;
      }
LABEL_45:
      while ( 1 )
      {
        v26 = (char **)CA::Transaction::global_deleted;
        if ( !CA::Transaction::global_deleted )
          break;
        do
        {
          v21 = __ldaxr((unsigned __int64 *)&CA::Transaction::global_deleted);
          if ( (char **)v21 != v26 )
          {
            __clrex();
            goto LABEL_45;
          }
        }
        while ( __stlxr(0LL, (unsigned __int64 *)&CA::Transaction::global_deleted) );
        v22 = v26;
        do
        {
          v23 = *v22;
          *(_QWORD *)v62 = v23;
          if ( v23 )
          {
            do
            {
              v24 = v23;
              v23 = *(char **)v23;
            }
            while ( v23 );
          }
          else
          {
            v24 = v62;
          }
          *(_QWORD *)v24 = *(_QWORD *)(v1 + 24);
          *(_QWORD *)(v1 + 24) = *(_QWORD *)v62;
          v22 = (char **)v22[1];
        }
        while ( v22 );
        if ( v26 )
        {
          do
          {
            v25 = (char **)v26[1];
            free(v26);
            v26 = v25;
          }
          while ( v25 );
        }
      }
      v60 = 0.0;
      v27 = CA::Context::commit_transaction((CA::Context *)v1, (CA::Transaction *)&v60, v7, v15);
      v28 = v27;
      v59 = CAHostTimeWithTime(v27, v60);
      v58 = CAHostTimeWithTime(v59, *(double *)(v4 + 136));
      v57 = CAHostTimeWithTime(v58, *(double *)(v4 + 152));
      v30 = *(_QWORD **)(v1 + 24);
      if ( v30 )
      {
        do
        {
          v31 = (_QWORD *)*v30;
          free(v30);
          v30 = v31;
        }
        while ( v31 );
        *(_QWORD *)(v1 + 24) = 0LL;
      }
      v56 = v28;
      v32 = *(_QWORD *)(v1 + 48);
      if ( v32 )
      {
        *(_QWORD *)(v1 + 48) = 0LL;
        x_hash_table_foreach(v32, CA::release_root, v1);
        x_hash_table_free(v32);
      }
      v33 = *(void **)(v1 + 16);
      if ( v33 )
      {
        CA::Transaction::free_command_list(v33);
        *(_QWORD *)(v1 + 16) = 0LL;
      }
      while ( 1 )
      {
        v38 = *(_QWORD *)(v4 + 32);
        if ( !v38 )
          break;
        *(_QWORD *)(v4 + 32) = *(_QWORD *)v38;
        if ( (unsigned int)(*(_DWORD *)(v38 + 12) + 1) >= 2 )
        {
          MEMORY[0x1800BF3A8](mach_task_self_);
          *(_DWORD *)(v38 + 12) = 0;
        }
        v34 = *(_QWORD **)(v38 + 16);
        if ( v34 )
        {
          do
          {
            MEMORY[0x1800BE280](*v34);
            v34 = (_QWORD *)v34[1];
          }
          while ( v34 );
          v35 = *(_QWORD **)(v38 + 16);
          if ( v35 )
          {
            do
            {
              v36 = (_QWORD *)v35[1];
              free(v35);
              v35 = v36;
            }
            while ( v36 );
          }
        }
        malloc_zone = get_malloc_zone();
        MEMORY[0x1804EA76C](malloc_zone, v38);
      }
      *(_DWORD *)(v4 + 40) = 0;
      if ( *(_QWORD *)(v4 + 104) )
      {
        MEMORY[0x18036F954]();
        *(_QWORD *)(v4 + 104) = 0LL;
      }
      CA::Layer::free_transaction((CA::Layer *)v1, v29);
      if ( (i & 1) == 0 || !*(_QWORD *)(v4 + 24) && !*(_QWORD *)(v4 + 16) )
        break;
    }
    if ( *(_QWORD *)v1 )
    {
      x_hash_table_free(*(_QWORD *)(v4 + 8));
      *(_QWORD *)(v4 + 8) = 0LL;
      *(_QWORD *)v1 = 0LL;
    }
    else
    {
      MEMORY[0x1800DB3F0](&CA::Transaction::slot_lock);
      CA::Transaction::slot_mask &= ~(1 << *(_DWORD *)(v1 + 96));
      *(_DWORD *)(v4 + 4) = -1;
      *(_DWORD *)(v1 + 96) = -1;
      MEMORY[0x1800BF618](&CA::Transaction::slot_lock);
    }
    v39 = *(_BYTE *)(v4 + 188);
    *(_DWORD *)v4 = 0;
    *(_QWORD *)(v4 + 128) = 0LL;
    *(_QWORD *)(v4 + 136) = 0LL;
    if ( !*(_DWORD *)(v4 + 144) )
    {
      *(_OWORD *)(v4 + 152) = 0u;
      *(_OWORD *)(v4 + 168) = 0u;
    }
    x_heap_free(*(_QWORD *)(v4 + 112));
    *(_WORD *)(v4 + 190) = 0;
    *(_QWORD *)(v4 + 112) = 0LL;
    *(_QWORD *)(v4 + 120) = 0LL;
    v40 = *(void **)(v4 + 224);
    if ( v40 )
    {
      free(v40);
      *(_QWORD *)(v4 + 224) = 0LL;
    }
    *(_BYTE *)(v4 + 188) = (*(_BYTE *)(v4 + 188) >> 1) & 8 | *(_BYTE *)(v4 + 188) & 0xD3;
    do
      v41 = __ldaxr(&CA::Transaction::next_transaction_seed);
    while ( __stlxr(v41 + 1, &CA::Transaction::next_transaction_seed) );
    *(_DWORD *)(v4 + 184) = v41 + 1;
    if ( v41 == -1 )
    {
      do
      {
        v42 = __ldaxr(&CA::Transaction::next_transaction_seed);
        v43 = v42 + 1;
      }
      while ( __stlxr(v43, &CA::Transaction::next_transaction_seed) );
      *(_DWORD *)(v4 + 184) = v43;
    }
    *(_DWORD *)(v1 + 112) = 0;
    *(_BYTE *)(v1 + 116) &= 0xF9u;
    v44 = *(CA::Transaction::Level **)(v1 + 88);
    if ( v44 )
    {
      *(_QWORD *)(v1 + 88) = 0LL;
      do
      {
        v45 = *(CA::Transaction::Level **)v44;
        CA::Transaction::Level::~Level(v44);
        v46 = get_malloc_zone();
        MEMORY[0x1804EA76C](v46, v44);
        v44 = v45;
      }
      while ( v45 );
    }
    v47 = MEMORY[0x1800BF2D0]();
    v48 = CATimeWithHostTime(v47) - v7;
    v61 = 0LL;
    *(_QWORD *)v62 = 0LL;
    v49 = MEMORY[0x1800BF360](v62, &v61, 0LL);
    v50 = v61 - *(_QWORD *)v62;
    this = CAHostTimeWithTime(v49, v7);
    v51 = this + v50;
    v52 = *(_DWORD *)(*(_QWORD *)(v1 + 104) + 184LL);
    if ( v48 >= 0.017 )
    {
      v53 = v55;
      if ( CA::Transaction::bad_perf_signpost_handle(void)::once_token != -1 )
        dispatch_once(&CA::Transaction::bad_perf_signpost_handle(void)::once_token, &__block_literal_global_32);
      v54 = CA::Transaction::bad_perf_signpost_handle(void)::handle;
      this = MEMORY[0x180D9FC00](CA::Transaction::bad_perf_signpost_handle(void)::handle);
      if ( !(_DWORD)this )
        goto LABEL_93;
    }
    else
    {
      v53 = v55;
      if ( (v39 & 0x20) != 0 )
        goto LABEL_93;
      if ( CA::Transaction::in_memory_signpost_handle(void)::once_token != -1 )
        dispatch_once(&CA::Transaction::in_memory_signpost_handle(void)::once_token, &__block_literal_global_4930);
      v54 = CA::Transaction::in_memory_signpost_handle(void)::handle;
      this = MEMORY[0x180D9FC00](CA::Transaction::in_memory_signpost_handle(void)::handle);
      if ( !(_DWORD)this )
        goto LABEL_93;
    }
    *(_DWORD *)v62 = 134349312;
    *(_QWORD *)&v62[4] = v51;
    v63 = 1026;
    v64 = v52;
    this = MEMORY[0x18390A26C](
             &dword_183E65000,
             v54,
             0LL,
             0xEEEEB0B5B2B2EEEELL,
             "Commit",
             "%{public, signpost.description:begin_time}llu seed=%{public, name=transaction_seed}#x",
             v62,
             18LL);
LABEL_93:
    if ( v53 )
      return MEMORY[0x1800BF27C](835321862LL, v59, v56, v58, v57);
  }
  return this;
}

@end
